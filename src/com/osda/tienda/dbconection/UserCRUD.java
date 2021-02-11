package com.osda.tienda.dbconection;

import java.sql.SQLException;

import com.mysql.jdbc.CallableStatement;

import javafx.collections.ObservableList;

public class UserCRUD extends ConnectionDB {

	public UserCRUD() {
	
			ConnectionDB.getConnection("Desde UserCrud");
		
	}

	public boolean addUser(String nombre, String ape1, String ape2, String user, String pass) {
		String resp = "";
		try {
			CallableStatement call = (CallableStatement) connection.prepareCall("{CALL addUserSp(?,?,?,?,?)}");
			call.setString(1, nombre);
			call.setString(2, ape1);
			call.setString(3, ape2);
			call.setString(4, user);
			call.setString(5, pass);
			// call.setInt(6, 3);
			call.execute();

			while (call.getResultSet().next()) {
				resp = call.getResultSet().getString(1);
			}

			ConnectionDB.closeConnection();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (resp.equals("1"))
			return true;
		else
			return false;

	}

	public boolean findAdmin(String userAdmin, String passAdmin) throws SQLException {
		CallableStatement call = (CallableStatement) connection.prepareCall("{CALL findAdminSp(?, ?)}");
		call.setString(1, userAdmin);
		call.setString(2, passAdmin);
		call.execute();

		String resp = "";
		while (call.getResultSet().next()) {
			resp = call.getResultSet().getString(1);
		}

		ConnectionDB.closeConnection();

		if (resp.equals("1"))
			return true;
		else
			return false;

	}

	@SuppressWarnings("null")
	public ObservableList<String> getCargos() {
		ObservableList<String> listaCargos = null;
		int count = 0;
		String valor = "";
		try {
			CallableStatement consult = (CallableStatement) connection.prepareCall("{CALL getCargos()}");
			consult.execute();
			
			System.out.println("Consulta realizada");
			
			while (consult.getResultSet().next()) {
				System.out.println("Comenzando a llenar lista");
				valor = consult.getResultSet().getString(1);
				System.out.println(valor);
				
				listaCargos.add(valor);
				
				//listaCargos.add(count, consult.getResultSet().getString(1));
				
				count ++;
			}
			
			ConnectionDB.closeConnection();
		} catch (SQLException sql) {
			sql.printStackTrace();
		}
		return listaCargos;
	}

}
