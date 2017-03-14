package com.empleodigital.eoslab1.controllers;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Categoria;
import com.empleodigital.eoslab1.beans.Producto;

public class SearchController {
	
	//Buscador del producto en la BBDD
		@RequestMapping("/buscaproducto")
		public ModelAndView buscaP(
				//Recojo la referencia del producto que quiere modificar
				@RequestParam("categoria") String categoria,
				@RequestParam("ref") String ref,
				@RequestParam("page") String pagina
				){

			//Creamos un objeto mav para redireccionar en función del resultado de la consulta
			ModelAndView mav = new ModelAndView();

			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

			//Ejecuto la consulta que me devuelve el producto a modificar
			String sql;
			sql ="SELECT * FROM productos WHERE productos.id_categorias=? AND productos.ref=?";

			//Realizo la consulta que me devuelve el producto con esa referencia
			try {
				Producto seleccion = jdbc.queryForObject(
						sql,
						new BeanPropertyRowMapper<Producto>(Producto.class),
						new Object[]{categoria, ref}
						);

				//Añado el producto a la vista y redirigo al formulario de actualización
				mav.addObject("seleccion", seleccion);

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

				mav.addObject("mensaje", "Producto no encontrado");
			}

			return mav;

		}
		
		
		//Buscador de la categoria en la BBDD
		@RequestMapping("/buscacategoria")
		public ModelAndView buscaP(
				//Recojo la referencia del producto que quiere modificar
				@RequestParam("categoria") int categoria,
				@RequestParam("page") String page
				){

			//Creamos un objeto mav para redireccionar en función del resultado de la consulta
			ModelAndView mav = new ModelAndView();

			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

			//Ejecuto la consulta que me devuelve el producto a modificar
			String sql;
			sql ="SELECT * FROM categorias WHERE id=?";

			//Realizo la consulta que me devuelve el producto con esa referencia
			try {
				Categoria seleccion = jdbc.queryForObject(
						sql,
						new BeanPropertyRowMapper<Categoria>(Categoria.class),
						new Object[]{categoria}
						);

				//Añado la categoria a la vista y redirigo al formulario de actualización
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
