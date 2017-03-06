package com.empleodigital.eoslab1.controllers;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Categoria;

//Indico que se trata de un controlador
@Controller
public class ControladorCategorias {
	
		//Dar de alta una categoria
		@RequestMapping("/altaCategoria")
		public String altaC(){
			
			return "addCategoria";
			
		}
		
		@RequestMapping("/agregarC")
		public ModelAndView agregaCategoria(
				//Recogemos los parámetros de la request
				@RequestParam("nombreC") String nombreC, 
				@RequestParam("imagenC") String imagenC){
				
				//Creamos un objeto mav para redireccionar en función del resultado de la consulta
				ModelAndView mav = new ModelAndView();
				
				//Conectamos con la BBDD usando la clase Conector creada anteriormente
				JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
				
				//Ejecuto la consuta
				String sql="INSERT INTO categorias (nombre, imagen) VALUES (?,?);";
				
				try {
					jdbc.update(sql, new Object[]{nombreC, imagenC});
					mav.setViewName("home");
					mav.addObject("mensaje", "La categoria " + nombreC + " se ha agregado con éxito");				
				} catch (Exception e) {
					mav.setViewName("home");
					mav.addObject("mensaje", "La categoría no se ha podido agregar");
				}
				return mav;
		
		}
		
		//Modificar una categoría
		@RequestMapping("/modificaCategoria")
		public String updateP(){
			
			return "updateCategoria";
			
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
		
		@RequestMapping("/actualizarC")
		public ModelAndView actualizaCategoria(
				//Recogemos los parámetros de la request
				@RequestParam("id") int id,
				@RequestParam("nombre") String nombre, 
				@RequestParam("imagen") String imagen
				){
				
				//Creamos un objeto mav para redireccionar en función del resultado de la consulta
				ModelAndView mav = new ModelAndView();
				
				//Conectamos con la BBDD usando la clase Conector creada anteriormente
				JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
				
				//Ejecuto la consuta
				String sql="UPDATE categorias SET nombre=?, imagen=? WHERE id=?";
				try {
					jdbc.update(sql, new Object[]{nombre, imagen, id});
					mav.setViewName("home");
					mav.addObject("mensaje", "La categoría " + nombre + " se ha actualizado con éxito");				
				} catch (Exception e) {
					mav.setViewName("updateCategoria");
					mav.addObject("mensaje", "La categoria no se ha podido actualizar");	
				}
				return mav;
		
		}
		
		//Eliminar una categoría
		@RequestMapping("/eliminaCategoria")
		public String deleteC(){
			
			return "deleteCategoria";
			
		}
		
		//Elimino la categoria
		@RequestMapping("/eliminarC")
		public ModelAndView borraProducto(
				//Recogemos los parámetros de la request
				@RequestParam("id") int id,
				@RequestParam("nombre") String nombre, 
				@RequestParam("imagen") String imagen){
				
				//Creamos un objeto mav para redireccionar en función del resultado de la consulta
				ModelAndView mav = new ModelAndView();
				
				//Conectamos con la BBDD usando la clase Conector creada anteriormente
				JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
				
				//Ejecuto la consuta
				String sql="DELETE FROM caterogias WHERE id=?";
				try {
					jdbc.update(sql, new Object[]{id});
					
					mav.setViewName("home");
					mav.addObject("mensaje", "La categoria " + nombre + " se ha eliminado con éxito");				
				} catch (Exception e) {
					mav.setViewName("deleteCategoria");
					mav.addObject("mensaje", "La categoria no se ha podido borrar");	
				}
				return mav;
		
		}
		
		
		
	
	
	
	
	
	
	
	

}
