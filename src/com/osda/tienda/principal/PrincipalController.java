package com.osda.tienda.principal;

import java.io.IOException;
import java.net.URL;

import com.jfoenix.controls.JFXButton;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;

import java.util.ResourceBundle;

import com.osda.tienda.login.LoginModel;

public class PrincipalController implements Initializable{
    @FXML
    private BorderPane bpRoot;

    @FXML
    private JFXButton btnCloseSesion;

    @FXML
    private Label lblDate;

    @FXML
    private Label lblTime;

    @FXML
    private Label lblIam;
    
    private PrincipalModel principalModel = new PrincipalModel();
   
    @FXML
   void btnAddProductOnAction (ActionEvent e) {
	   
   }
    
    @FXML
    void bpRootOnMouse(MouseEvent event) {
    	lblDate.setText(principalModel.getDate());
		lblTime.setText(principalModel.getTime());

    }
    
    @FXML
    void btnCloseSesion(ActionEvent event) {
    	try {

    		principalModel.closeSesion(bpRoot);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		new LoginModel();
		lblIam.setText(LoginModel.nombre);
		lblDate.setText(new PrincipalModel().getDate());
		lblTime.setText(new PrincipalModel().getTime());	
	}
}
