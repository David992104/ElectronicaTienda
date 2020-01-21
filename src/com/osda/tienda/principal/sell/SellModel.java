package com.osda.tienda.principal.sell;

import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javafx.fxml.FXMLLoader;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;
import javafx.scene.layout.AnchorPane;

public class SellModel {
	
	public void showWindow(TabPane tabPane) {
		FXMLLoader loader= new FXMLLoader(getClass()
				.getResource("/com/osda/tienda/principal/sell/SellView.fxml"));
		AnchorPane window = null;
		
		try {
			window = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Tab tab = new Tab();
		tab.setText("Venta");
		tab.setContent(window);
		tab.setClosable(false);
		tabPane.getTabs().add(tab);
		tabPane.getSelectionModel().select(tab);
		
	}
	
	public String getDate() {
		Calendar calendar = new GregorianCalendar();
		return calendar.get(Calendar.DAY_OF_MONTH) + " de " +
				(calendar.get(Calendar.MONTH ) + 1) + " del " + 
				calendar.get(Calendar.YEAR);
	}
	
	public String getTime() {
		Calendar calendario = new GregorianCalendar();
		
		return calendario.get(Calendar.HOUR_OF_DAY) + ":" +
				calendario.get(Calendar.MINUTE)+":"+
				calendario.get(Calendar.SECOND);
	}


}
