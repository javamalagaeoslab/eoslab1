package com.empleodigital.eoslab1.controllers;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Categoria;
import com.empleodigital.eoslab1.beans.Producto;


@Controller
public class UpdateController {
	
	@RequestMapping("/actualizar")
	public ModelAndView actualizaProducto(
			//Recogemos los parámetros de la request
			@RequestParam("id") Integer id,
			@RequestParam("url") String url, 
			@RequestParam("descripcion_nombre") String descripcion_nombre,
			@RequestParam("ref") String ref,
			@RequestParam("descripcion") String descripcion,
			@RequestParam("tresd") String tresd,
			@RequestParam("bluetooth") String bluetooth,
			@RequestParam("fecha") String fecha,
			@RequestParam("cruz") String cruz,
			@RequestParam("horario") String horario,
			@RequestParam("brillo") String brillo,
			@RequestParam("disponibilidad") String disponibilidad,
			@RequestParam("voltaje") String voltaje,
			@RequestParam("consumo") String consumo,
			@RequestParam("almacenamiento") String almacenamiento,
			@RequestParam("trabajo") String trabajo,
			@RequestParam("pixeles") String pixeles,
			@RequestParam("fuente") String fuente,
			@RequestParam("control") String control,
			@RequestParam("tipografia") String tipografia,
			@RequestParam("cpu") String cpu,
			@RequestParam("animacion") String animacion,
			@RequestParam("cantidad") String cantidad,
			@RequestParam("ancho") String ancho,
			@RequestParam("alto") String alto,
			@RequestParam("fondo") String fondo,
			@RequestParam("categoria") String categoria,
			RedirectAttributes flash){

		//Creamos un objeto mav para redireccionar en función del resultado de la consulta
		ModelAndView mav = new ModelAndView();
		if (id!=null){
			if (!this.existeProducto(categoria, id, ref, descripcion_nombre)) {

				//Conectamos con la BBDD usando la clase Conector creada anteriormente
				JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

				//Ejecuto la consuta
				String sql="UPDATE productos SET url=?, descripcion_nombre=?,ref=?, descripcion=?, tresd=?, bluetooth=?, fecha=?, cruz=?, horario=?, brillo=?, disponibilidad=?, voltaje=?,consumo=?, almacenamiento=?, trabajo=?, pixeles=?, fuente=?, control=?, tipografia=?, cpu=?, animacion=?, cantidad=?, ancho=?, alto=?, fondo=?, id_categorias=? WHERE id=?";
				try {
					jdbc.update(sql, new Object[]{url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, categoria,id});

					flash.addFlashAttribute("mensaje", "El producto " + descripcion_nombre + " se ha actualizado con éxito");				
					mav.setViewName("redirect:/");	
				} catch (Exception e) {
					mav.setViewName("updateProducto");
					mav.addObject("mensaje", "El producto no se ha podido actualizar");	
				}
			} else {
				mav.setViewName("updateProducto");
				mav.addObject("mensaje","Ya existe un producto con ese nombre y/o esa referencia en esta categoría");
			}
		}else{
			mav.setViewName("updateProducto");
			mav.addObject("mensaje", "Indica el producto a modificar");	

		}
		return mav;

	}
	
	
	private boolean existeProducto(@RequestParam("categoria") String categoria,@RequestParam("id") int id, @RequestParam("ref") String ref, @RequestParam("descripcion_nombre") String nombre){
		boolean existe = false;
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
		String sql;
		sql ="SELECT * FROM productos WHERE productos.id_categorias=? AND productos.id<>? AND (productos.ref=? OR productos.descripcion_nombre=?)";
		try {
			List lista = jdbc.query(
					sql,
					new BeanPropertyRowMapper<Producto>(Producto.class),
					new Object[]{categoria, id, ref, nombre}
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
	
	@RequestMapping("/modificaProducto/{categoria}/{ref}/{nombre}/{id}")
	public ModelAndView updateP(
			@PathVariable int categoria,
			@PathVariable String ref,
			@PathVariable String nombre,
			@PathVariable int id,
			RedirectAttributes flash){

		
		//Creamos un objeto mav para redireccionar en función del resultado de la consulta
				ModelAndView mav = new ModelAndView();

				//Conectamos con la BBDD usando la clase Conector creada anteriormente
				JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

				//Ejecuto la consulta que me devuelve el producto a modificar
				String sql;
				sql ="SELECT * FROM productos WHERE productos.id=?";

				//Realizo la consulta que me devuelve el producto con esa referencia
				try {
					Producto seleccion = jdbc.queryForObject(
							sql,
							new BeanPropertyRowMapper<Producto>(Producto.class),
							new Object[]{id});
					flash.addFlashAttribute("seleccion", seleccion);
				}catch (Exception e) {
					
				}

		flash.addFlashAttribute("categoria",categoria);				
		flash.addFlashAttribute("ref",ref);					
		flash.addFlashAttribute("nombre",nombre);	
		mav.setViewName("redirect:/modificaP");	

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
		
		@RequestMapping("/actualizarC")
		public ModelAndView actualizaCategoria(
				//Recogemos los parámetros de la request
				@RequestParam("id") Integer id,
				@RequestParam("nombre") String nombre, 
				@RequestParam("imagen") String imagen,
				RedirectAttributes flash
				){

			ModelAndView mav = new ModelAndView();

			if(id!=null){
				//Creamos un objeto mav para redireccionar en función del resultado de la consulta
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
			}else{
				mav.setViewName("updateCategoria");
				mav.addObject("mensaje", "Indica la categoría a modificar");
			}

			return mav;

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
