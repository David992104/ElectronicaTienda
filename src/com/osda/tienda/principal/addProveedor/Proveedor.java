package com.osda.tienda.principal.addProveedor;

public class Proveedor {
	
	private int codigo;
	private String razon;
	private String rfc;
	private String email;
	private String direccion;
	private String telefono;
	
	public Proveedor(int codigo, String razon, String rfc, String email, String direccion, String telefono) {
		this.codigo = codigo;
		this.razon = razon;
		this.rfc = rfc;
		this.email = email;
		this.direccion = direccion;
		this.telefono = telefono;
	}
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getRazon() {
		return razon;
	}
	public void setRazon(String razon) {
		this.razon = razon;
	}
	public String getRfc() {
		return rfc;
	}
	public void setRfc(String rfc) {
		this.rfc = rfc;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	
	

}
