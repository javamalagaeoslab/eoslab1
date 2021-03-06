package com.empleodigital.eoslab1.beans;

import java.util.ArrayList;

public class Categoria {
	//Atributos
	private int id;
	private String nombre;
	private String imagen;
	private ArrayList<Producto> listaProducto;
	
	//Constructores
	public Categoria() {
		
	}

	//Getter y Setter
	public Categoria(int id, String nombre, String imagen) {
		
		this.id = id;
		this.nombre = nombre;
		this.imagen = imagen;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	
	public ArrayList<Producto> getListaProducto() {
		return listaProducto;
	}
	
	public void setListaProducto(ArrayList<Producto> listaProducto) {
		this.listaProducto = listaProducto;
	}
	
	
	@Override
	public String toString() {
		return "Categoria [id=" + id + ", nombre=" + nombre + ", imagen=" + imagen + "]";
	}

	
	
	
	
	
	
	

}
