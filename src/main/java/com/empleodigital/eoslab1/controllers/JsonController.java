package com.empleodigital.eoslab1.controllers;

import java.util.ArrayList;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Categoria;
import com.empleodigital.eoslab1.beans.ObjetoJSON;
import com.empleodigital.eoslab1.beans.Producto;

@Controller
public class JsonController {
	
	@RequestMapping(value="JSON", method=RequestMethod.GET)
	@ResponseBody 
	public ObjetoJSON devuelveJSON(){
		ArrayList<Producto> seleccion = new ArrayList<Producto>();
		// We connect with database using the conector class that we created previosly
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
		// Create and execute the query
		String sql;
		sql ="SELECT * FROM productos;";
		// We realize the query will return all products of database
		seleccion = (ArrayList<Producto>) jdbc.query(
				sql,
				new BeanPropertyRowMapper<Producto>(Producto.class),
				new Object[]{}
				);
		//We create Json object and added arraylist "seleccion"
		ObjetoJSON json = new ObjetoJSON(seleccion);
		// we return json object
		return json;
	}
	
	@RequestMapping(value="JSONCategorias", method=RequestMethod.GET)
	// we add tag responsebody because its obligatory if you want to return a JSON in this format
	@ResponseBody 
	// We are creating this mapping to return a Json of Categories
	public ObjetoJSON devuelveJSONCategorias(){
		// We create arraylist of Category bean and the name will be "seleccion"
		ArrayList<Categoria> seleccion = new ArrayList<Categoria>();
		// We connect with database in this step using the Connector class where we specified all info of it
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
		// We create and execute query 
		String sql;
		sql ="SELECT * FROM categorias;";
		// We realize the query that will return all categories are inside database and we introduce 
		// in arraylist "seleccion"
		seleccion = (ArrayList<Categoria>) jdbc.query(
				sql,
				new BeanPropertyRowMapper<Categoria>(Categoria.class),
				new Object[]{}
				);
		// We create json object with seleccion arraylist and return in the next step
		ObjetoJSON json = new ObjetoJSON(seleccion);
		return json;
	}
}
