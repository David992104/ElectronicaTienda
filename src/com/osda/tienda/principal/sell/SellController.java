package com.osda.tienda.principal.sell;

import java.net.URL;
import java.util.ResourceBundle;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextField;
import com.osda.tienda.login.LoginModel;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;

public class SellController  implements Initializable{

    @FXML
    private AnchorPane apVenta;

    @FXML
    private Label lblDate;

    @FXML
    private Label lblTime;

    @FXML
    private JFXTextField txtCodigo;

    @FXML
    private JFXTextField txtProducto;

    @FXML
    private JFXTextField txtDisponibles;

    @FXML
    private JFXTextField txtPrecio;

    @FXML
    private JFXTextField txtCantidad;

    @FXML
    private JFXTextField txtSubtotal;

    @FXML
    private JFXButton btnVaciar;

    @FXML
    private JFXButton btnAnadir;

    @FXML
    private TableColumn<?, ?> tabCodigo;

    @FXML
    private TableColumn<?, ?> tabProducto;

    @FXML
    private TableColumn<?, ?> tabPrecio;

    @FXML
    private TableColumn<?, ?> tabCantidad;

    @FXML
    private TableColumn<?, ?> tabSubtotal;

    @FXML
    private Label lblTotal;

    @FXML
    private JFXButton btnCancelar;

    @FXML
    private JFXButton btnProceder;
    
    private SellModel sellModel = new SellModel();
    
    @FXML
    void apVentaOnMouseMoved(MouseEvent event) {
    	lblDate.setText(sellModel.getDate());
		lblTime.setText(sellModel.getTime());	
    }
    
    @FXML
    void btnAnadirOnAction(ActionEvent event) {

    }

    @FXML
    void btnCancelarOnAction(ActionEvent event) {

    }

    @FXML
    void btnProcederOnAction(ActionEvent event) {

    }

    @FXML
    void btnVaciarOnAction(ActionEvent event) {

    }
    
    @Override
	public void initialize(URL location, ResourceBundle resources) {
		new LoginModel();
		lblDate.setText(new SellModel().getDate());
		lblTime.setText(new SellModel().getTime());	
	}

}
