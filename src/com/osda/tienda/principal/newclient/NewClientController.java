package com.osda.tienda.principal.newclient;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextField;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.layout.AnchorPane;

public class NewClientController {

    @FXML
    private AnchorPane apCreateUser;

    @FXML
    private JFXTextField txtname;

    @FXML
    private JFXTextField txtApe1;

    @FXML
    private JFXTextField txtApe2;

    @FXML
    private JFXTextField txtAdress;

    @FXML
    private JFXTextField txtNumber;

    @FXML
    private JFXButton btnCancelar;

    @FXML
    private JFXButton btnClean;

    @FXML
    private JFXButton btnCreateUser;

    @FXML
    void btnCancelarOnAction(ActionEvent event) {

    }

    @FXML
    void btnCleanOnAction(ActionEvent event) {

    }

    @FXML
    void btnCreateUserOnAction(ActionEvent event) {
    	String nombre = txtname.getText().toString().trim();
    	String ape1 = txtApe1.getText().toString().trim();
    	String ape2 = txtApe2.getText().toString().trim();
    	String number = txtNumber.getText().toString().trim();
    	String adress = txtAdress.getText().toString().trim();
    	
    	if (nombre.equals(""))
    		txtAdress.requestFocus();
    	else if (ape1.equals(""))
    		txtNumber.requestFocus();    		
    	else if (number.equals(""))
    		txtApe1.requestFocus();
    	else if (adress.equals(""))
    		txtname.requestFocus();
    	else
    		if (new NewClientModel().createClient(nombre, ape1, ape2, number, adress)) {
    			txtname.setText(null);
    		}
    }

}
