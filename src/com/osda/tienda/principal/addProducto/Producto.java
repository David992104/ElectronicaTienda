package com.osda.tienda.principal.addProducto;

import javafx.beans.property.SimpleDoubleProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Producto {
	private StringProperty codigo;
	private StringProperty descripcion;
	private SimpleDoubleProperty precio;
	private SimpleIntegerProperty existencias;
	
	public Producto(String codigo, String descripcion, double precio, int existencias) {
		this.codigo = new SimpleStringProperty(codigo);
		this.descripcion = new SimpleStringProperty(descripcion);
		this.precio = new SimpleDoubleProperty(precio);
		this.existencias = new SimpleIntegerProperty(existencias);
	}

	public StringProperty getCodigo() {
		return codigo;
	}

	public void setCodigo(SimpleStringProperty codigo) {
		this.codigo = codigo;
	}

	public StringProperty getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(SimpleStringProperty descripcion) {
		this.descripcion = descripcion;
	}

	public SimpleDoubleProperty getPrecio() {
		return precio;
	}

	public void setPrecio(SimpleDoubleProperty precio) {
		this.precio = precio;
	}

	public SimpleIntegerProperty getExistencias() {
		return existencias;
	}

	public void setExistencias(SimpleIntegerProperty existencias) {
		this.existencias = existencias;
	}
	
	
	

}
