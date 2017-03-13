package com.empleodigital.eoslab1.controllers;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Categoria;
import com.empleodigital.eoslab1.beans.Producto;

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
				@RequestParam("imagenC") String imagenC,
				RedirectAttributes flash){
				
				//Creamos un objeto mav para redireccionar en función del resultado de la consulta
				ModelAndView mav = new ModelAndView();
				if (!this.existeCategoria(nombreC)) {
				
				//Conectamos con la BBDD usando la clase Conector creada anteriormente
				JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
				
				//Ejecuto la consuta
				String sql="INSERT INTO categorias (nombre, imagen) VALUES (?,?);";
				
				try {
					jdbc.update(sql, new Object[]{nombreC, imagenC});
					flash.addFlashAttribute("mensaje", "La categoria " + nombreC + " se ha agregado con éxito");				
					mav.setViewName("redirect:/");
				} catch (Exception e) {
					mav.setViewName("addCategoria");
					mav.addObject("mensaje", "La categoría no se ha podido agregar");
				}
				} else {
					mav.setViewName("addCategoria");
					mav.addObject("mensaje","La categoría que intentas añadir ya existe");
				}
				return mav;
		
		}
		
		//Modificar una categoría
		@RequestMapping("/modificaCategoria")
		public ModelAndView updateP(){
			
			//Creamos un objeto mav para redireccionar en función del resultado de la consulta
			ModelAndView mav = new ModelAndView();
			
			
			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
			
			//Creo y ejecuto las consultas. Los encapsulo porque sino devuelve ningún valor la consulta me peta
			//el programa
			String sql;
			sql ="SELECT * FROM categorias;";
			
			//Realizo la consulta que me devuelve todas las categorias disponibles
			List<Categoria> lista = jdbc.query(
					sql,
					new BeanPropertyRowMapper<Categoria>(Categoria.class),
					new Object[]{}
					);
			
			mav.addObject("lista", lista);
			mav.setViewName("updateCategoria");
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
		
		@RequestMapping("/actualizarC")
		public ModelAndView actualizaCategoria(
				//Recogemos los parámetros de la request
				@RequestParam("id") int id,
				@RequestParam("nombre") String nombre, 
				@RequestParam("imagen") String imagen,
				RedirectAttributes flash
				){
				
				//Creamos un objeto mav para redireccionar en función del resultado de la consulta
				ModelAndView mav = new ModelAndView();
				if (!this.existeCategoria(nombre, id)) {
				//Conectamos con la BBDD usando la clase Conector creada anteriormente
				JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
				
				//Ejecuto la consuta
				String sql="UPDATE categorias SET nombre=?, imagen=? WHERE id=?";
				try {
					jdbc.update(sql, new Object[]{nombre, imagen, id});
					flash.addFlashAttribute("mensaje", "La categoria " + nombre + " se ha modificado con éxito");				
					mav.setViewName("redirect:/");				
				} catch (Exception e) {
					mav.setViewName("updateCategoria");
					mav.addObject("mensaje", "La categoria no se ha podido actualizar");	
				}
				} else {
					mav.setViewName("updateCategoria");
					mav.addObject("mensaje","La categoría que intentas añadir ya existe");
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
		
		
		private boolean existeCategoria(@RequestParam("nombre") String nombre){
			boolean existe = false;
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
			String sql;
			sql ="SELECT * FROM categorias WHERE nombre = ?";
			try {
				List lista = jdbc.query(
						sql,
						new BeanPropertyRowMapper<Categoria>(Categoria.class),
						new Object[]{nombre}
						);
				if (lista.isEmpty()) {
					existe = false;
				} else {
					existe = true;
				}			
			} catch (Exception e) {
				
			}
			return existe;
		}		
		
		
		private boolean existeCategoria(@RequestParam("nombre") String nombre, @RequestParam("id") int id){
			boolean existe = false;
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
			String sql;
			sql ="SELECT * FROM categorias WHERE nombre = ? AND id <> ?";
			try {
				List lista = jdbc.query(
						sql,
						new BeanPropertyRowMapper<Categoria>(Categoria.class),
						new Object[]{nombre, id}
						);
				if (lista.isEmpty()) {
					existe = false;
				} else {
					existe = true;
				}			
			} catch (Exception e) {
				
			}
			return existe;
		}
		
		
	
	
	
	
	
	
	
	

}
