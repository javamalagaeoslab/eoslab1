package com.empleodigital.eoslab1.bbdd;
import java.util.ResourceBundle;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

//Esta clase la usamos para todas la conexiones con la BBDD
public class Conector {
	
	public static DriverManagerDataSource getDataSource(){
		
		//Creamos un objeto de tipo DataSource y mediante sus métodos le pasamos los datos de conexión con
		//la BBDD que se encuentran en un archivo de texto como recurso externo de la app
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		
		//Creamos un usador de recursos del archivo db.properties, para pasarle los parámetros de acceso
		//a la BBDD
		ResourceBundle res = ResourceBundle.getBundle("db");
		
		//Indicamos los datos de conexión. Con esto se carga los driver y se crea la conexión
		dataSource.setDriverClassName(res.getString("jdbc-driver"));
		dataSource.setUrl(res.getString("jdbc-url"));
		dataSource.setUsername(res.getString("jdbc-user"));
		dataSource.setPassword(res.getString("jdbc-pass"));
		
		return dataSource;
		
		}	
}
