package com.empleodigital.eoslab1.controllers;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Producto;

public class EraseController {
	
	@RequestMapping("/eliminaProducto/{categoria}/{ref}/{nombre}/{id}/{nombreProducto}")
	public ModelAndView deleteP(
			@PathVariable int categoria,
			@PathVariable String ref,
			@PathVariable String nombre,
			@PathVariable int id,
			@PathVariable String nombreProducto,
			RedirectAttributes flash){

		
		ModelAndView mav = new ModelAndView();

		flash.addFlashAttribute("categoria",categoria);				
		flash.addFlashAttribute("ref",ref);					
		flash.addFlashAttribute("nombre",nombre);
		Producto producto = new Producto();
		producto.setId(id);
		producto.setDescripcion_nombre(nombreProducto);
		flash.addFlashAttribute("seleccion", producto);
		mav.setViewName("redirect:/eliminaProducto");	

		return mav;

	}


	//Elimino el producto
	@RequestMapping("/borrar")
	public ModelAndView borraProducto(
			//Recogemos los parámetros de la request
			@RequestParam("id") Integer id,
			@RequestParam("descripcion_nombre") String descripcion_nombre,
			RedirectAttributes flash){

		//Creamos un objeto mav para redireccionar en función del resultado de la consulta
		ModelAndView mav = new ModelAndView();

		//Conectamos con la BBDD usando la clase Conector creada anteriormente
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

		//Ejecuto la consuta
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

	//Elimino la categoria
		@RequestMapping("/eliminarC")
		public ModelAndView borraCategoria(
				//Recogemos los parámetros de la request
				@RequestParam("id") Integer id,
				@RequestParam("nombre") String nombre,
				RedirectAttributes flash){

			//Creamos un objeto mav para redireccionar en función del resultado de la consulta
			ModelAndView mav = new ModelAndView();

			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

			//Ejecuto la consuta
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
