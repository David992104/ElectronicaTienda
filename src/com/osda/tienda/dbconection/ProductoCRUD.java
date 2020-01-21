package com.osda.tienda.dbconection;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javafx.beans.property.SimpleDoubleProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.ObservableList;

public class ProductoCRUD extends ConnectionDB {
	private SimpleStringProperty codigo;
	private SimpleStringProperty descripcion;
	private SimpleDoubleProperty precio;
	private SimpleIntegerProperty existencias;

	public ProductoCRUD() {
		try {
			getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ProductoCRUD(String codigo, String descripcion, double precio, int existencias) {
		this.codigo = new SimpleStringProperty(codigo);
		this.descripcion = new SimpleStringProperty(descripcion);
		this.precio = new SimpleDoubleProperty(precio);
		this.existencias = new SimpleIntegerProperty(existencias);
	}

	public ObservableList<ProductoCRUD> getProductos() {
		ObservableList<ProductoCRUD> listaProducto = null;

		try {
			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL getProduct()}");
			call.execute();
			while (call.getResultSet().next()) {
				listaProducto.add(new ProductoCRUD(call.getResultSet().getString(1), call.getResultSet().getString(2),
						call.getResultSet().getDouble(3), call.getResultSet().getInt(4)));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listaProducto;
	}

	public ResultSet addProducto(String codigoB, String descripccion, double precio, int existencias)
			throws SQLException {
		CallableStatement call = (CallableStatement) connection.prepareCall("{CALL addProductoSp(?,?,?,?)}");
		call.setString(1, codigoB);
		call.setString(2, descripccion);
		call.setDouble(3, precio);
		call.setInt(4, existencias);
		call.execute();
		return call.getResultSet();

	}
}
