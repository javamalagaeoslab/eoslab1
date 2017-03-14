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
		
		//Conectamos con la BBDD usando la clase Conector creada anteriormente
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
		
		//Creo y ejecuto las consultas.
		String sql;
		sql ="SELECT * FROM productos;";
		
		//Realizo la consulta que me devuelve todos los productos que tiene la base de datos
		seleccion = (ArrayList<Producto>) jdbc.query(
				sql,
				new BeanPropertyRowMapper<Producto>(Producto.class),
				new Object[]{}
				);
		ObjetoJSON json = new ObjetoJSON(seleccion);
		
		return json;
		
	}
	
	
	@RequestMapping(value="JSONCategorias", method=RequestMethod.GET)
	@ResponseBody 
	public ObjetoJSON devuelveJSONCategorias(){
		ArrayList<Categoria> seleccion = new ArrayList<Categoria>();
		
		//Conectamos con la BBDD usando la clase Conector creada anteriormente
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
		
		//Creo y ejecuto las consultas.
		String sql;
		sql ="SELECT * FROM categorias;";
		
		//Realizo la consulta que me devuelve todas las que tiene la base de datos
		seleccion = (ArrayList<Categoria>) jdbc.query(
				sql,
				new BeanPropertyRowMapper<Categoria>(Categoria.class),
				new Object[]{}
				);
		ObjetoJSON json = new ObjetoJSON(seleccion);
		
		return json;
		
	}
	
	

	

}
