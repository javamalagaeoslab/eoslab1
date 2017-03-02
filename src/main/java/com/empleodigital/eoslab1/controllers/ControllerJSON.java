package com.empleodigital.eoslab1.controllers;

import java.util.ArrayList;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.empleodigital.eoslab1.bbdd.Conector;
import com.empleodigital.eoslab1.beans.Producto;

@Controller
public class ControllerJSON {
	
	@RequestMapping(value="JSON", method=RequestMethod.GET)
	public @ResponseBody ArrayList devuelveJSON(){
		
		//Creamos un objeto mav para redireccionar en función del resultado de la consulta
		//ModelAndView mav = new ModelAndView();
		
		//Conectamos con la BBDD usando la clase Conector creada anteriormente
		JdbcTemplate jdbc = new JdbcTemplate(Conector.getDataSource());
		
		//Creo y ejecuto las consultas.
		String sql;
		sql ="SELECT * FROM productos;";
		
		//Realizo la consulta que me devuelve todos los productos que tiene la base de datos
		ArrayList<Producto> seleccion = (ArrayList<Producto>) jdbc.query(
				sql,
				new BeanPropertyRowMapper<Producto>(Producto.class),
				new Object[]{}
				);
		
		//Compruebo que me devuelve los pretendientes que tienen ese tag
		//mav.addObject("seleccion",seleccion);
		//mav.setViewName("home");
		return seleccion;
		
	}
	

	

}
