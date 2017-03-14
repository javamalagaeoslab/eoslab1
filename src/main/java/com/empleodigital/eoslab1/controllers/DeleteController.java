package com.empleodigital.eoslab1.controllers;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Producto;
//Delete controller
@Controller
public class DeleteController {
	
	@RequestMapping("/eliminaProducto/{categoria}/{ref}/{nombre}/{id}/{nombreProducto}")
	public ModelAndView deleteP(
			@PathVariable int categoria,
			@PathVariable String ref,
			@PathVariable String nombre,
			@PathVariable int id,
			@PathVariable String nombreProducto,
			RedirectAttributes flash){
		
		ModelAndView mav = new ModelAndView();
		// We are using flash attribute to hide 
		flash.addFlashAttribute("categoria",categoria);				
		flash.addFlashAttribute("ref",ref);					
		flash.addFlashAttribute("nombre",nombre);
		// We create product object from "Producto" bean to add info as ID, Description
		Producto producto = new Producto();
		producto.setId(id);
		producto.setDescripcion_nombre(nombreProducto);
		flash.addFlashAttribute("seleccion", producto);
		mav.setViewName("redirect:/eliminaProducto");	
		return mav;
	}


	//Delete products
	@RequestMapping("/borrar")
	public ModelAndView borraProducto(
			// We get request parameters
			@RequestParam("id") Integer id,
			@RequestParam("descripcion_nombre") String descripcion_nombre,
			RedirectAttributes flash){

		// We create an mav object to redirect in function of query results
		ModelAndView mav = new ModelAndView();
		// We connect with the database using the connector class that we created previously
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
		// Execute the query. If its not null, we delete with information we added in query
		if (id!=null){
			String sql="DELETE FROM productos WHERE id=?";
			try {
				jdbc.update(sql, new Object[]{id});
				flash.addFlashAttribute("mensaje", "El producto " + descripcion_nombre + " se ha eliminado con éxito");				
				mav.setViewName("redirect:/");				
			} catch (Exception e) {
				mav.setViewName("deleteProducto");
				mav.addObject("mensaje", "El producto no se ha podido borrar");	
			}
		}else{
			mav.setViewName("deleteProducto");
			mav.addObject("mensaje", "Indica el producto a eliminar");	
		}
		return mav;
	}

	// Delete Category
		@RequestMapping("/eliminarC")
		public ModelAndView borraCategoria(
				// We get parameters
				@RequestParam("id") Integer id,
				@RequestParam("nombre") String nombre,
				RedirectAttributes flash){
			// We create a mav object to redirect in function of query results
			ModelAndView mav = new ModelAndView();
			// We connect with database using the connector class that we created previously
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
			// Execute the query
			if(id!=null){
				String sql="DELETE FROM categorias WHERE id=?";
				try {
					jdbc.update(sql, new Object[]{id});
					flash.addFlashAttribute("mensaje", "La categoria " + nombre + " se ha eliminado con éxito");				
					mav.setViewName("redirect:/");				
				} catch (Exception e) {
					mav.setViewName("deleteCategoria");
					mav.addObject("mensaje", "La categoria no se ha podido borrar.");	
				}
			}else{
				mav.setViewName("deleteCategoria");
				mav.addObject("mensaje", "Indica la categoría a eliminar");
			}
			return mav;
		}
}
