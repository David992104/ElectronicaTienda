package com.osda.tienda.principal.newclient;

import java.io.IOException;

import javafx.fxml.FXMLLoader;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;
import javafx.scene.layout.AnchorPane;

public class NewClientModel {
	
	public void showWindow(TabPane tabPane) {
		FXMLLoader loader= new FXMLLoader(getClass()
				.getResource("/com/osda/tienda/principal/newclient/NewClientView.fxml"));
		AnchorPane window = null;
		try {
			window = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Tab tab = new Tab();
		tab.setText("Cliente Nuevo");
		tab.setContent(window);
		
		tabPane.getTabs().add(tab);
		tabPane.getSelectionModel().select(tab);
	}

}
