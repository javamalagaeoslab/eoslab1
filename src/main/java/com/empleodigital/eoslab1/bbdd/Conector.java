package com.empleodigital.eoslab1.bbdd;
import java.util.ResourceBundle;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

//Esta clase la usamos para todas la conexiones con la BBDD
public class Conector {
	
	public static DriverManagerDataSource getDataSource(){
		
		//Creamos un objeto de tipo DataSource y mediante sus m�todos le pasamos los datos de conexi�n con
		//la BBDD que se encuentran en un archivo de texto como recurso externo de la app
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		
		//Creamos un usador de recursos del archivo db.properties, para pasarle los par�metros de acceso
		//a la BBDD
		ResourceBundle res = ResourceBundle.getBundle("db");
		
		//Indicamos los datos de conexi�n. Con esto se carga los driver y se crea la conexi�n
		dataSource.setDriverClassName(res.getString("jdbc-driver"));
		dataSource.setUrl(res.getString("jdbc-url"));
		dataSource.setUsername(res.getString("jdbc-user"));
		dataSource.setPassword(res.getString("jdbc-pass"));
		
		return dataSource;
		
		}	
}
