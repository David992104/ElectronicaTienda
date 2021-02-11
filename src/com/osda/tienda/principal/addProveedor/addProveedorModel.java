package com.osda.tienda.principal.addProveedor;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import com.osda.tienda.dbconection.ConnectionDB;
import com.osda.tienda.dbconection.ProvedorCRUD;
import com.osda.tienda.notification.Notification;

import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;
import javafx.scene.layout.AnchorPane;

public class addProveedorModel {

	public ObservableList<Proveedor> llenarTabla() {
		return new ProvedorCRUD().getProvedores();
	}

	public boolean addProvedor(String rsocial, String rfc, String correo, String direccion, String telefono) {
		String result = "";

			ConnectionDB.getConnection("Desde el añadir provedor modelo");
		
		ResultSet prodMessage;
		try {
			prodMessage = new ProvedorCRUD().addProvedor(rsocial, rfc, correo, direccion, telefono);

			while (prodMessage.next()) {
				result = prodMessage.getString(1);
			}

			ConnectionDB.closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (result.equals("proveedorExistente")) {
			Notification.sendError("Revisa tus datos");
			return false;
		} else if (result.equals("Aniadido")) {
			if ((JOptionPane.showConfirmDialog(null, "Confirmar proveedor") == 0)) {
				Notification.showMessage("El proveedor " + rsocial + " fue añadido");
				// new ProvedorCRUD().commit();
				return true;
			} else {
				Notification.showMessage("El proveedor " + rsocial + " no fue añadido");
				// new ProvedorCRUD().rollback();
				return false;
			}
		} else {
			System.out.println("NAda");
			return false;
		}
	}

	public void showWindow(TabPane tabPane) {
		FXMLLoader loader = new FXMLLoader(
				getClass().getResource("/com/osda/tienda/principal/addProveedor/addProveedorView.fxml"));
		AnchorPane window = null;

		try {
			window = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}

		Tab tab = new Tab();
		tab.setText("Añadir Proveedor");
		tab.setContent(window);
		tab.setClosable(true);
		tabPane.getTabs().add(tab);
		tabPane.getSelectionModel().select(tab);
	}

}
