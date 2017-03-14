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


@Controller
public class AddController {
	
	
	@RequestMapping("/agregarProducto")
	public ModelAndView agregaProducto(
			//Recogemos los par�metros de la request
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

		//Creamos un objeto mav para redireccionar en funci�n del resultado de la consulta
		ModelAndView mav = new ModelAndView();
		if (!this.existeProducto(categoria, ref, descripcion_nombre)) {
			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

			//Ejecuto la consuta
			String sql="INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


			try {
				jdbc.update(sql, new Object[]{url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, categoria});
				flash.addFlashAttribute("mensaje", "El producto " + descripcion_nombre + " se ha agregado con �xito");				
				mav.setViewName("redirect:/");				
			} catch (Exception e) {
				mav.setViewName("addProducto");
				mav.addObject("mensaje", "El producto no se ha podido agregar");
			}				
		} else {
			mav.setViewName("addProducto");
			mav.addObject("mensaje","El producto que intentas a�adir ya existe");
		}
		return mav;

	}
	
	private boolean existeProducto(@RequestParam("categoria") String categoria,@RequestParam("ref") String ref, @RequestParam("descripcion_nombre") String nombre){
		boolean existe = false;
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
		String sql;
		sql ="SELECT * FROM productos WHERE productos.id_categorias=? AND (productos.ref=? OR productos.descripcion_nombre=?)";
		try {
			List lista = jdbc.query(
					sql,
					new BeanPropertyRowMapper<Producto>(Producto.class),
					new Object[]{categoria, ref, nombre}
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
	
	
	
	
	@RequestMapping("/agregarC")
	public ModelAndView agregaCategoria(
			//Recogemos los par�metros de la request
			@RequestParam("nombreC") String nombreC, 
			@RequestParam("imagenC") String imagenC,
			RedirectAttributes flash){

		//Creamos un objeto mav para redireccionar en funci�n del resultado de la consulta
		ModelAndView mav = new ModelAndView();
		if (!this.existeCategoria(nombreC)) {

			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

			//Ejecuto la consuta
			String sql="INSERT INTO categorias (nombre, imagen) VALUES (?,?);";

			try {
				jdbc.update(sql, new Object[]{nombreC, imagenC});
				flash.addFlashAttribute("mensaje", "La categoria " + nombreC + " se ha agregado con �xito");				
				mav.setViewName("redirect:/");
			} catch (Exception e) {
				mav.setViewName("addCategoria");
				mav.addObject("mensaje", "La categor�a no se ha podido agregar");
			}
		} else {
			mav.setViewName("addCategoria");
			mav.addObject("mensaje","La categor�a que intentas a�adir ya existe");
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
	
	

}
