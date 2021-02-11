package com.osda.tienda.principal.user.add;

import java.io.IOException;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import com.osda.tienda.dbconection.CRUD;
import com.osda.tienda.dbconection.UserCRUD;
import com.osda.tienda.notification.Notification;

import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;

public class AddUserModel {

	public boolean addUser(String nombre, String ape1, String ape2, String user, String pass, String passc) {
		boolean resp = false;
		if (pass.equals(passc)) {

			// if (pass.equals("1")) {
			if (resp = new UserCRUD().addUser(nombre, ape1, ape2, user, pass)) {
				if (JOptionPane.showConfirmDialog(null, "Deseas agregar usuario") == 0) {
					Notification.showMessage("Agragado correcatement");
					// new UserCRUD().commit();
				} else {
					new UserCRUD().rollback();
					Notification.showMessage("Usuario no añadido " + user);
				}
			}
		} else {
			Notification.showMessage("Revisa tu informacion\nContraseï¿½as no coinciden");
		}
		return resp;
	}

	public boolean findAdmin(String userAdmin, String passAdmin) throws SQLException {
		if ((new UserCRUD().findAdmin(userAdmin, passAdmin)))
			return true;
		else {
			Notification.sendError("El usuario no existe o \nNo tiene privilegios");
			return false;
		}
	}

	public ObservableList<String> getCargos() {

		return new UserCRUD().getCargos();

	}

	public void showWindow(TabPane tabPane) {

		try {
			FXMLLoader loader = new FXMLLoader(
					getClass().getResource("/com/osda/tienda/principal/user/add/AddUserView.fxml"));
			BorderPane window = null;
			window = loader.load();
			Tab tab = new Tab();
			tab.setText("Añadir Usuario");
			tab.setContent(window);
			tab.setClosable(true);
			tabPane.getTabs().add(tab);
			tabPane.getSelectionModel().select(tab);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
}
