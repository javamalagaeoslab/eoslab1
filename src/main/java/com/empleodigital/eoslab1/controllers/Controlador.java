package com.empleodigital.eoslab1.controllers;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Producto;

//Indico que se trata de un controlador
@Controller
public class Controlador {
	
	//Lo primero en cargar debe ser el controlador y redirigir al home
	//Como no realizo ninguna acción más haya que redirigir no necesito ModelAndView
	@RequestMapping("/")
	public String landing(){

		return "home";
		
	}
	
	
	//Dar de alta un producto
	@RequestMapping("/altaProducto")
	public String altaP(){
		
		return "addProducto";
		
	}
	
	@RequestMapping("/agregar")
	public ModelAndView agregaProducto(
			//Recogemos los parámetros de la request
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
			@RequestParam("categoria") String categoria){
			
			//Creamos un objeto mav para redireccionar en función del resultado de la consulta
			ModelAndView mav = new ModelAndView();
			
			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
			
			//Ejecuto la consuta
			String sql="INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			try {
				jdbc.update(sql, new Object[]{url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, categoria});
				mav.setViewName("home");
				mav.addObject("mensaje", "El producto " + descripcion_nombre + " se ha agregado con éxito");				
			} catch (Exception e) {
				mav.setViewName("home");
				mav.addObject("mensaje", "El producto no se ha podido agregar");
			}
			return mav;
	
	}
	
	
	//Actualizar un producto
	@RequestMapping("/modificaProducto")
	public String updateP(){
		
		return "updateProducto";
		
	}
	
	//Buscador del producto en la BBDD
	@RequestMapping("/buscaproducto")
	public ModelAndView buscaP(
			//Recojo la referencia del producto que quiere modificar
			@RequestParam("categoria") String categoria,
			@RequestParam("ref") String ref 
			){
			
			//Creamos un objeto mav para redireccionar en función del resultado de la consulta
			ModelAndView mav = new ModelAndView();
			
			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
			
			//Ejecuto la consulta que me devuelve el producto a modificar
			String sql;
			sql ="SELECT * FROM productos WHERE productos.id_categorias=? AND productos.ref=?;";
			
			//Realizo la consulta que me devuelve el producto con esa referencia
			Producto seleccion = jdbc.queryForObject(
					sql,
					new BeanPropertyRowMapper<Producto>(Producto.class),
					new Object[]{categoria, ref}
					);
			
			//Añado el producto a la vista y redirigo al formulario de actualización
			mav.addObject("seleccion", seleccion);
			mav.setViewName("updateProducto");
			return mav;
			
		}
	
	@RequestMapping("/actualizar")
	public ModelAndView actualizaProducto(
			//Recogemos los parámetros de la request
			@RequestParam("id") int id,
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
			@RequestParam("categoria") String categoria){
			
			//Creamos un objeto mav para redireccionar en función del resultado de la consulta
			ModelAndView mav = new ModelAndView();
			
			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
			
			//Ejecuto la consuta
			String sql="UPDATE productos SET url=?, descripcion_nombre=?,ref=?, descripcion=?, tresd=?, bluetooth=?, fecha=?, cruz=?, horario=?, brillo=?, disponibilidad=?, voltaje=?,consumo=?, almacenamiento=?, trabajo=?, pixeles=?, fuente=?, control=?, tipografia=?, cpu=?, animacion=?, cantidad=?, ancho=?, alto=?, fondo=?, id_categorias=? WHERE id=?";
			jdbc.update(sql, new Object[]{url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, categoria,id});
			
			mav.setViewName("home");
			mav.addObject("mensaje", "El producto " + descripcion_nombre + " se ha actualizado con éxito");
			return mav;
	
	}
	
	
	//Elimino el producto
	@RequestMapping("/borrar")
	public ModelAndView actualizaProducto(
			//Recogemos los parámetros de la request
			@RequestParam("id") int id,
			@RequestParam("descripcion_nombre") String descripcion_nombre){
			
			//Creamos un objeto mav para redireccionar en función del resultado de la consulta
			ModelAndView mav = new ModelAndView();
			
			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
			
			//Ejecuto la consuta
			String sql="DELETE FROM productos WHERE id=?";
			
			jdbc.update(sql, new Object[]{id});
			
			mav.setViewName("home");
			mav.addObject("mensaje", "El producto " + descripcion_nombre + " se ha eliminado con éxito");
			return mav;
	
	}
	
	
	
	
	
	
	

}
