package com.empleodigital.eoslab1.controllers;

import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Categoria;
import com.empleodigital.eoslab1.beans.Producto;

//Here we indicate that we are using controllers in this class
@Controller
public class MainController {

	//Self-execute session of our application/web page
	@Autowired
	private HttpSession session;

	//Our first step will be to create the first mapping to order the first movements of our aplication/web page
	//and redirect to our jsp page
	//as we dont need any extra action, we dont need to use ModelAndView
	@RequestMapping({"/","/cancelar"})
	public ModelAndView home(){
		//We create a mav object to redirect to jsp page we want and create all movements we assign
		ModelAndView mav = new ModelAndView();

		//We connect to our DataBase using the Connector Class that we created in our package bbdd.
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());

		//We create and execute the consults. We encapsulate them because if we dont do this, return any value
		// and we have a  problem in the moment to execute the program
		String sql;
		sql ="SELECT * FROM categorias;";

		//We are doing the query that will return us all available categories
		ArrayList<Categoria> lista = (ArrayList<Categoria>) jdbc.query(
				sql,
				new BeanPropertyRowMapper<Categoria>(Categoria.class));

		// I create an arraylist that will contain all products we have in the specific category of our database
		ArrayList<Producto> listaProductos = new ArrayList<Producto>();
		// with this for, we are touring and registering all in "lista"
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
		// adding to lista
		session.setAttribute("lista", lista);
		// redirect to home jsp
		mav.setViewName("home");
		return mav;
	}

	// redirect to "addProducto" when we are using action option in any of our jsp files
	@RequestMapping("/altaProducto")
	public String altaP(){
		return "addProducto";
	}

	// we update products
	@RequestMapping("/modificaP")
	public String updateP(){
		return "updateProducto";
	}

	//We erase products. This is a redirect Mapping that we are using in jsp
	@RequestMapping("/eliminaProducto")
	public String deleteP(){
		return "deleteProducto";
	}

	// We are adding a new category
		@RequestMapping("/altaCategoria")
		public String altaC(){
			return "addCategoria";
		}

		// we erase any of our category
		@RequestMapping("/eliminaCategoria")
		public String deleteC(){
			return "deleteCategoria";
		}
}
