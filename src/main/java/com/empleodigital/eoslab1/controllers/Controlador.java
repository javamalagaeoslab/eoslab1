package com.empleodigital.eoslab1.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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

//Indico que se trata de un controlador
@Controller
public class Controlador {

	@Autowired
	private HttpSession session;



	//Lo primero en cargar debe ser el controlador y redirigir al home
	//Como no realizo ninguna acción más haya que redirigir no necesito ModelAndView
	@RequestMapping({"/","/cancelar"})
	public ModelAndView home(){
		//Creamos un objeto mav para redireccionar en función del resultado de la consulta
		ModelAndView mav = new ModelAndView();

		//Conectamos con la BBDD usando la clase Conector creada anteriormente
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

		//Creo y ejecuto las consultas. Los encapsulo porque sino devuelve ningún valor la consulta me peta
		//el programa
		String sql;
		sql ="SELECT * FROM categorias;";

		//Realizo la consulta que me devuelve todas las categorias disponibles
		ArrayList<Categoria> lista = (ArrayList<Categoria>) jdbc.query(
				sql,
				new BeanPropertyRowMapper<Categoria>(Categoria.class));

		//Creo un ArrayList con que contenga todos los productos que existan para cada categoría
		ArrayList<Producto> listaProductos = new ArrayList<Producto>();

		for (int i=0; i<lista.size();i++){

			Categoria categoria= lista.get(i);

			sql ="SELECT * FROM productos WHERE id_categorias=?";

			listaProductos=(ArrayList<Producto>) jdbc.query(
					sql,
					new BeanPropertyRowMapper<Producto>(Producto.class),
					new Object[]{categoria.getId()}
					);
			categoria.setListaProducto(listaProductos);
		}

		session.setAttribute("lista", lista);
		mav.setViewName("home");
		return mav;

	}


	//Dar de alta un producto
	@RequestMapping("/altaProducto")
	public String altaP(){

		return "addProducto";

	}

	@RequestMapping("/agregarProducto")
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
			@RequestParam("categoria") String categoria,
			RedirectAttributes flash){

		//Creamos un objeto mav para redireccionar en función del resultado de la consulta
		ModelAndView mav = new ModelAndView();
		if (!this.existeProducto(categoria, ref, descripcion_nombre)) {
			//Conectamos con la BBDD usando la clase Conector creada anteriormente
			JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

			//Ejecuto la consuta
			String sql="INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


			try {
				jdbc.update(sql, new Object[]{url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, categoria});
				flash.addFlashAttribute("mensaje", "El producto " + descripcion_nombre + " se ha agregado con éxito");				
				mav.setViewName("redirect:/");				
			} catch (Exception e) {
				mav.setViewName("addProducto");
				mav.addObject("mensaje", "El producto no se ha podido agregar");
			}				
		} else {
			mav.setViewName("addProducto");
			mav.addObject("mensaje","El producto que intentas añadir ya existe");
		}
		return mav;

	}


	//Actualizar un producto
	@RequestMapping("/modificaP")
	public String updateP(){

		return "updateProducto";

	}

	@RequestMapping("/modificaProducto/{categoria}/{ref}/{nombre}")
	public ModelAndView updateP(
			@PathVariable int categoria,
			@PathVariable String ref,
			@PathVariable String nombre,
			RedirectAttributes flash){

		ModelAndView mav = new ModelAndView();

		flash.addFlashAttribute("categoria",categoria);				
		flash.addFlashAttribute("ref",ref);					
		flash.addFlashAttribute("nombre",nombre);					
		mav.setViewName("redirect:/modificaP");	

		return mav;

	}

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

	//Elimina un producto
	@RequestMapping("/eliminaProducto")
	public String deleteP(){

		return "deleteProducto";

	}


	@RequestMapping("/eliminaProducto/{categoria}/{ref}/{nombre}")
	public ModelAndView deleteP(
			@PathVariable int categoria,
			@PathVariable String ref,
			@PathVariable String nombre,
			RedirectAttributes flash){

		ModelAndView mav = new ModelAndView();

		flash.addFlashAttribute("categoria",categoria);				
		flash.addFlashAttribute("ref",ref);					
		flash.addFlashAttribute("nombre",nombre);					
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


}
