package com.osda.tienda.principal.sell;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.Calendar;
import java.util.GregorianCalendar;

import com.osda.tienda.dbconection.SellCRUD;
import com.osda.tienda.principal.sell.confirm.ConfirmSellModel;

import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;
import javafx.scene.layout.AnchorPane;

public class SellModel {

//	Variables para mostrar datos en la tabla del ticket
	private String codigo;
	private String producto;
	private double precio;
	private int cantidad;
	private double subtotal;

	public SellModel(String codigo, String producto, double precio, int cantidad, double subtotal) {
		super();
		this.codigo = codigo;
		this.producto = producto;
		this.precio = precio;
		this.cantidad = cantidad;
		this.subtotal = subtotal;
	}

	public SellModel() {

	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getProducto() {
		return producto;
	}

	public void setProducto(String producto) {
		this.producto = producto;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

	public ResultSet buscar(String codigo) {
		return new SellCRUD().buscarProd(codigo);
	}

	public void pasarValores(double totalPagar, int productos, ObservableList<SellModel> lista, String usuario) {
		new ConfirmSellModel(totalPagar, productos, lista, usuario);
	}

	public void showWindow(TabPane tabPane) {
		FXMLLoader loader = new FXMLLoader(getClass().getResource("/com/osda/tienda/principal/sell/SellView.fxml"));
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
		String  mes = "";
		switch( calendar.get(Calendar.MONTH) + 1) {
			case 1: mes = "Enero"; break;
			case 2: mes = "Febrero"; break;
			case 3: mes = "Marzo"; break;
			case 4: mes = "Abril"; break;
			case 5: mes = "Mayo"; break;
			case 6: mes = "Junio"; break;
			case 7: mes = "Julio"; break;
			case 8: mes = "Agosto"; break;
			case 9: mes = "Septiembre"; break;
			case 10: mes = "Octubre"; break;
			case 11: mes = "Noviembre"; break;
			case 12: mes = "Diciembre"; break;
		}
		return calendar.get(Calendar.DAY_OF_MONTH) + " de " + mes + " del "
				+ calendar.get(Calendar.YEAR);
	}

	public String getTime() {
		Calendar calendario = new GregorianCalendar();

		return calendario.get(Calendar.HOUR_OF_DAY) + ":" + calendario.get(Calendar.MINUTE) + ":"
				+ calendario.get(Calendar.SECOND);
	}

}
