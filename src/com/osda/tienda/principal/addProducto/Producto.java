package com.osda.tienda.principal.addProducto;

public class Producto {
	private String codigo;
	private String descripcion;
	private double precio;
	private int existencias;
	
	public Producto(String codigo, String descripcion, double precio, int existencias) {
		this.codigo = codigo;
		this.descripcion = descripcion;
		this.precio = precio;
		this.existencias = existencias;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getExistencias() {
		return existencias;
	}

	public void setExistencias(int existencias) {
		this.existencias = existencias;
	}
	
	
	

}
