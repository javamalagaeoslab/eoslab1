package com.empleodigital.eoslab1.controllers;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Categoria;
import com.empleodigital.eoslab1.beans.Producto;

@Controller
public class SearchController {
	// We search products in database
		@RequestMapping("/buscaproducto")
		public ModelAndView buscaP(
				// We get the reference of products that would like to update
				@RequestParam("categoria") String categoria,
				@RequestParam("ref") String ref,
				@RequestParam("page") String pagina
				){
			// We create a mav object to redirect in function of query results
			ModelAndView mav = new ModelAndView();
			// We connect with database using the Connector class that we created previously with getdatasource, etc
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
			// WE execute the query will return the product to upload
			String sql;
			sql ="SELECT * FROM productos WHERE productos.id_categorias=? AND productos.ref=?";
			// We realize the query that will return the product with that reference and if we have a problem
			// will return to different views (jsp) to change the query we want
			try {
				Producto seleccion = jdbc.queryForObject(
						sql,
						new BeanPropertyRowMapper<Producto>(Producto.class),
						new Object[]{categoria, ref}
						);
				// We add the products to views and redirect into form of actualizations.
				mav.addObject("seleccion", seleccion);
				// if hide reference "pagina" we created with that name, is the same to String "actualiza"
				// will return to updateProducto jsp, if not, to deleteProducto jsp.
				if (pagina.equals("actualiza")){
					mav.setViewName("updateProducto");
				}else{
					mav.setViewName("deleteProducto");
				}
			} catch (Exception e) {
				if (pagina.equals("actualiza")){
					mav.setViewName("updateProducto");
				}else{
					mav.setViewName("deleteProducto");
				}
				// if anything bad happens during this process, we will return the message "Producto no encontrado"
				mav.addObject("mensaje", "Producto no encontrado");
			}
			return mav;
		}
		// Searching in categories of database
		@RequestMapping("/buscacategoria")
		public ModelAndView buscaP(
				// We get the reference of products that we want to change
				@RequestParam("categoria") int categoria,
				@RequestParam("page") String page
				){
			// We create a mav object to redirect in function of query results.
			ModelAndView mav = new ModelAndView();
			// We connect with database as we are doing in all controllers
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
			// We execute the query that will return the products to change
			String sql;
			sql ="SELECT * FROM categorias WHERE id=?";
			// We execute the query that will return the product reference
			try {
				Categoria seleccion = jdbc.queryForObject(
						sql,
						new BeanPropertyRowMapper<Categoria>(Categoria.class),
						new Object[]{categoria}
						);
				// Add category to view and redirect into form of actualization
				mav.addObject("seleccion", seleccion);
				if (page.equals("actualiza")){
					mav.setViewName("updateCategoria");
				}else{
					mav.setViewName("deleteCategoria");
				}
			} catch (Exception e) {
				if (page.equals("actualiza")){
					mav.setViewName("updateCategoria");
				}else{
					mav.setViewName("deleteCategoria");
				}
				mav.addObject("mensaje", "Categoria no encontrada.");
			}
			return mav;
		}
}
