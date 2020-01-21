package com.osda.tienda.principal.addProveedor;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.osda.tienda.dbconection.ConnectionDB;
import com.osda.tienda.dbconection.ProvedorCRUD;

public class addProveedorModel {

	public boolean addProvedor(String rsocial, String rfc, String direccion, String correo, String telefono)throws ClassNotFoundException, SQLException {
		String result = "";

	ConnectionDB.getConnection();
	ResultSet prodMessage = new ProvedorCRUD().addProvedor(rsocial, rfc, direccion, correo, telefono);
	while (prodMessage.next()) {
		result = prodMessage.getString(1);
	}
	ConnectionDB.closeConnection();
		if (result.equals("proveedorExistente")){
			System.out.println("E proveedor ya fue registrado");
			return false;
		}else {
			System.out.println("proveedor Añadido Correctamente");
			return true;
		}
	
	
}

}
