package com.empleodigital.eoslab1.beans;

public class Producto {
	//Atributos
	private int id;
	private String url;
	private String descripcion_nombre;
	private String ref;
	private String descripcion;
	private String tresd;
	private String bluetooh;
	private String fecha;
	private String cruz;
	private String horario;
	private String brillo;
	private String disponibilidad;
	private String voltaje;
	private String consumo;
	private String almacenamiento;
	private String trabajo;
	private String pixeles;
	private String fuente;
	private String control;
	private String tipografia;
	private String cpu;
	private String animacion;
	private String cantidad;
	private String ancho;
	private String alto;
	private String fondo;
	private int id_categorias;
	
	//Constructores
	public Producto(){
		
	}
	
	public Producto(int id, String url, String descripcion_nombre, String ref, String descripcion, String tresd,
			String bluetooh, String fecha, String cruz, String horario, String brillo, String disponibilidad,
			String voltaje, String consumo, String almacenamiento, String trabajo, String pixeles, String fuente,
			String control, String tipografia, String cpu, String animacion, String cantidad, String ancho, String alto,
			String fondo, int id_categorias) {
		
		this.id = id;
		this.url = url;
		this.descripcion_nombre = descripcion_nombre;
		this.ref = ref;
		this.descripcion = descripcion;
		this.tresd = tresd;
		this.bluetooh = bluetooh;
		this.fecha = fecha;
		this.cruz = cruz;
		this.horario = horario;
		this.brillo = brillo;
		this.disponibilidad = disponibilidad;
		this.voltaje = voltaje;
		this.consumo = consumo;
		this.almacenamiento = almacenamiento;
		this.trabajo = trabajo;
		this.pixeles = pixeles;
		this.fuente = fuente;
		this.control = control;
		this.tipografia = tipografia;
		this.cpu = cpu;
		this.animacion = animacion;
		this.cantidad = cantidad;
		this.ancho = ancho;
		this.alto = alto;
		this.fondo = fondo;
		this.id_categorias = id_categorias;
	}
	
	//Getter y Setter
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDescripcion_nombre() {
		return descripcion_nombre;
	}

	public void setDescripcion_nombre(String descripcion_nombre) {
		this.descripcion_nombre = descripcion_nombre;
	}

	public String getRef() {
		return ref;
	}

	public void setRef(String ref) {
		this.ref = ref;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getTresd() {
		return tresd;
	}

	public void setTresd(String tresd) {
		this.tresd = tresd;
	}

	public String getBluetooh() {
		return bluetooh;
	}

	public void setBluetooh(String bluetooh) {
		this.bluetooh = bluetooh;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getCruz() {
		return cruz;
	}

	public void setCruz(String cruz) {
		this.cruz = cruz;
	}

	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}

	public String getBrillo() {
		return brillo;
	}

	public void setBrillo(String brillo) {
		this.brillo = brillo;
	}

	public String getDisponibilidad() {
		return disponibilidad;
	}

	public void setDisponibilidad(String disponibilidad) {
		this.disponibilidad = disponibilidad;
	}

	public String getVoltaje() {
		return voltaje;
	}

	public void setVoltaje(String voltaje) {
		this.voltaje = voltaje;
	}

	public String getConsumo() {
		return consumo;
	}

	public void setConsumo(String consumo) {
		this.consumo = consumo;
	}

	public String getAlmacenamiento() {
		return almacenamiento;
	}

	public void setAlmacenamiento(String almacenamiento) {
		this.almacenamiento = almacenamiento;
	}

	public String getTrabajo() {
		return trabajo;
	}

	public void setTrabajo(String trabajo) {
		this.trabajo = trabajo;
	}

	public String getPixeles() {
		return pixeles;
	}

	public void setPixeles(String pixeles) {
		this.pixeles = pixeles;
	}

	public String getFuente() {
		return fuente;
	}

	public void setFuente(String fuente) {
		this.fuente = fuente;
	}

	public String getControl() {
		return control;
	}

	public void setControl(String control) {
		this.control = control;
	}

	public String getTipografia() {
		return tipografia;
	}

	public void setTipografia(String tipografia) {
		this.tipografia = tipografia;
	}

	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
	}

	public String getAnimacion() {
		return animacion;
	}

	public void setAnimacion(String animacion) {
		this.animacion = animacion;
	}

	public String getCantidad() {
		return cantidad;
	}

	public void setCantidad(String cantidad) {
		this.cantidad = cantidad;
	}

	public String getAncho() {
		return ancho;
	}

	public void setAncho(String ancho) {
		this.ancho = ancho;
	}

	public String getAlto() {
		return alto;
	}

	public void setAlto(String alto) {
		this.alto = alto;
	}

	public String getFondo() {
		return fondo;
	}

	public void setFondo(String fondo) {
		this.fondo = fondo;
	}

	public int getId_categorias() {
		return id_categorias;
	}

	public void setId_categorias(int id_categorias) {
		this.id_categorias = id_categorias;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(" {\"url\":\"");
		builder.append(url);
		builder.append("\", descripcion_nombre\":\"");
		builder.append(descripcion_nombre);
		builder.append("\", ref\":\"");
		builder.append(ref);
		builder.append("\", descripcion\":\"");
		builder.append(descripcion);
		builder.append("\", tresd\":\"");
		builder.append(tresd);
		builder.append("\", bluetooh\":\"");
		builder.append(bluetooh);
		builder.append("\", fecha\":\"");
		builder.append(fecha);
		builder.append("\", cruz\":\"");
		builder.append(cruz);
		builder.append("\", horario\":\"");
		builder.append(horario);
		builder.append("\", brillo\":\"");
		builder.append(brillo);
		builder.append("\", disponibilidad\":\"");
		builder.append(disponibilidad);
		builder.append("\", voltaje\":\"");
		builder.append(voltaje);
		builder.append("\", consumo\":\"");
		builder.append(consumo);
		builder.append("\", almacenamiento\":\"");
		builder.append(almacenamiento);
		builder.append("\", trabajo\":\"");
		builder.append(trabajo);
		builder.append("\", pixeles\":\"");
		builder.append(pixeles);
		builder.append("\", fuente\":\"");
		builder.append(fuente);
		builder.append("\", control\":\"");
		builder.append(control);
		builder.append("\", tipografia\":\"");
		builder.append(tipografia);
		builder.append("\", cpu\":\"");
		builder.append(cpu);
		builder.append("\", animacion\":\"");
		builder.append(animacion);
		builder.append("\", cantidad\":\"");
		builder.append(cantidad);
		builder.append("\", ancho\":\"");
		builder.append(ancho);
		builder.append("\", alto\":\"");
		builder.append(alto);
		builder.append("\", fondo\":\"");
		builder.append(fondo);
		builder.append("\", id_categorias\":\"");
		builder.append(id_categorias);
		builder.append("}");
		return builder.toString();
	}


	

}
