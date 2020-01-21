package com.osda.tienda.principal.addProducto;

import java.sql.SQLException;

import com.osda.tienda.dbconection.ProductoCRUD;

import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;

public class AddProdController {

	@FXML
	private TextField txtCodigoB;

	@FXML
	private TextField txtDescripccion;

	@FXML
	private TextField txtPrecio;

	@FXML
	private TextField txtExistencias;

	@FXML
	private Button btnAniadir;

	@FXML
	private TableView<ProductoCRUD> tableProd;
    @FXML
    private TableColumn<ProductoCRUD, String> tabCodigo;

    @FXML
    private TableColumn<ProductoCRUD, String> tabDescripcion;

    @FXML
    private TableColumn<ProductoCRUD, Double> tabPrecio;

    @FXML
    private TableColumn<ProductoCRUD, Integer> tabExistencias;

	@FXML
	private Button btnVolver;
	
	//private ObservableList<ProductoCRUD> lista;
	
	//private AddProdModel addProducto = new AddProdModel();
	
	@FXML
	void OnAccionAniadir(ActionEvent event) {
		try {
			if (new AddProdModel().addProduct(txtCodigoB.getText().toString().trim(),
					txtDescripccion.getText().toString().trim(), 
					Double.parseDouble(txtPrecio.getText().toString().trim()),
					Integer.parseInt(txtExistencias.getText().toString().trim()))){
			txtCodigoB.setText("");
			txtDescripccion.setText("");
			txtPrecio.setText("");
			txtExistencias.setText("");
			}
			
			//.llenarTabla(lista);
			//tableProd.setItems(lista);
			
			//tabCodigo.setCellValueFactory(new PropertyValueFactory<ProductoCRUD, String>("codigo"));
			
		} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@FXML
	void OnAccionbtnVolver(ActionEvent event) {

	}

}
