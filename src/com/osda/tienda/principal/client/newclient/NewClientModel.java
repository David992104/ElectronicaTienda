package com.osda.tienda.principal.client.newclient;

import java.io.IOException;

import javax.swing.JOptionPane;

import com.osda.tienda.dbconection.ClientCRUD;
import com.osda.tienda.dbconection.ConnectionDB;
import com.osda.tienda.notification.Notification;

import javafx.fxml.FXMLLoader;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;
import javafx.scene.layout.AnchorPane;

public class NewClientModel {

	public boolean createClient(String name, String surname1, String surname2, String number, String adress) {
		String[] data = { name, surname1, surname2, number, adress };

		if (new ClientCRUD().createClient(data)) {
			if (JOptionPane.showConfirmDialog(null, "Deseas agregar a " + name) == 0) {
				Notification.showMessage("Cliente " + data[0] + "\nCreado Satisfactoriamente");
				new ConnectionDB().commit();
				return true;
			}else {
				new ConnectionDB().rollback();
				return false;
			}
		} else {
			Notification.sendError("Revisa tu informacion");
			return false;
		}
		
	}

	public void showWindow(TabPane tabPane) {
		FXMLLoader loader = new FXMLLoader(
				getClass().getResource("/com/osda/tienda/principal/client/newclient/NewClientView.fxml"));
		AnchorPane window = null;
		try {
			window = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}

		Tab tab = new Tab();
		tab.setText("Clientes");
		tab.setContent(window);
		tab.setId("1");
		tabPane.getTabs().add(tab);
		
		tabPane.getSelectionModel().select(tab);
	}

}
