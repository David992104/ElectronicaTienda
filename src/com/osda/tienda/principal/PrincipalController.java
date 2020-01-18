package com.osda.tienda.principal;

import java.io.IOException;
<<<<<<< HEAD

import com.jfoenix.controls.JFXButton;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;

public class PrincipalController {

=======
import java.net.URL;
import java.util.ResourceBundle;

import com.jfoenix.controls.JFXButton;
import com.osda.tienda.login.LoginModel;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;

public class PrincipalController implements Initializable{
>>>>>>> b6ab181715ad503677e00d2ede603bd559de84aa
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
    
<<<<<<< HEAD
    private PrincipalModel princiaplModel = new PrincipalModel();

    @FXML
    void bpRootOnMouse(MouseEvent event) {
    	lblIam.setText(new PrincipalModel().getNombre());
    	System.out.println("excelente");
=======
    private PrincipalModel principalModel = new PrincipalModel();
    
    @FXML
    void bpRootOnMouse(MouseEvent event) {
    	lblDate.setText(principalModel.getDate());
		lblTime.setText(principalModel.getTime());
>>>>>>> b6ab181715ad503677e00d2ede603bd559de84aa
    }
    
    @FXML
    void btnCloseSesion(ActionEvent event) {
    	try {
<<<<<<< HEAD
			princiaplModel.closeSesion(bpRoot);
=======
			principalModel.closeSesion(bpRoot);
>>>>>>> b6ab181715ad503677e00d2ede603bd559de84aa
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
<<<<<<< HEAD
=======

	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		new LoginModel();
		lblIam.setText(LoginModel.nombre);
		lblDate.setText(new PrincipalModel().getDate());
		lblTime.setText(new PrincipalModel().getTime());		
	}
	
	
>>>>>>> b6ab181715ad503677e00d2ede603bd559de84aa
}
