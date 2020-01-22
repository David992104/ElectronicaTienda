package com.osda.tienda.dbconection;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import com.osda.tienda.principal.sell.SellModel;

import javafx.collections.ObservableList;

public class SellCRUD extends ConnectionDB {
	public SellCRUD() {
		try {
			getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean insertarCompra(ObservableList<SellModel> lista, int codigoC, String user) {
		int ticket = 0;
		boolean opc = false;
		try {
			getConnection();
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			connection.setAutoCommit(false);
			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL createTicket(?,?)}");
			call.setInt(1, codigoC);
			call.setString(2, user);
			call.execute();
			while (call.getResultSet().next()) {
				if (call.getResultSet().getString(1).equals("0")) {
					opc = false;					
					rollback();
				} else {
					ticket = call.getResultSet().getInt(1);
					opc = true;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		try {
			
			CallableStatement call = null;
			for (SellModel prod : lista) {
				call = (CallableStatement) connection.prepareCall("{CALL addSell(?,?,?)}");
				call.setInt(1, ticket);
				call.setString(2, prod.getCodigo());
				call.setInt(3, prod.getCantidad());
				call.execute();
			}
			while(call.getResultSet().next()) {
				if (call.getResultSet().getString(1).equals("1"))
					opc = true;
			}
			if (JOptionPane.showConfirmDialog(null, "Confirmar venta") == 0) {
				commit();
			}else
				rollback();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return opc;
	}

	public ResultSet buscarProd(String codigo) {

		ResultSet result = null;
		try {
			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL searchProduct(?)}");
			call.setString(1, codigo);
			call.execute();
			result = call.getResultSet();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
