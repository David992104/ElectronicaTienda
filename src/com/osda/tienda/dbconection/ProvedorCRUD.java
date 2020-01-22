package com.osda.tienda.dbconection;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.osda.tienda.principal.addProveedor.Proveedor;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class ProvedorCRUD extends ConnectionDB {
	public ProvedorCRUD() {
		try {
			getConnection();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	

	public ObservableList<Proveedor> getProvedores() {
		ObservableList<Proveedor> lista = FXCollections.observableArrayList();

		try {
			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL getProveedor()}");
			call.execute();

			while (call.getResultSet().next()) {
				lista.add(new Proveedor(call.getResultSet().getInt(1), call.getResultSet().getString(2),
						call.getResultSet().getString(3), call.getResultSet().getString(4),
						call.getResultSet().getString(5), call.getResultSet().getString(6)));
			}

			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return lista;
	}

	public ResultSet addProvedor(String rsocial, String rfc, String correo, String direccion, String telefono) {
		CallableStatement call = null;
		try {
			call = (CallableStatement) connection.prepareCall("{CALL addProvedorSp(?,?,?,?,?)}");

			call.setString(1, rsocial);
			call.setString(2, rfc);
			call.setString(3, correo);
			call.setString(4, direccion);
			call.setString(5, telefono);
			call.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			return call.getResultSet();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
