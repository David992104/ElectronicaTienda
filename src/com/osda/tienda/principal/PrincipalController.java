package com.osda.tienda.principal;

import java.io.IOException;
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
	public void initialize(URL arg0, ResourceBundle arg1) {
		new LoginModel();
		lblIam.setText(LoginModel.nombre);
		lblDate.setText(new PrincipalModel().getDate());
		lblTime.setText(new PrincipalModel().getTime());
		
	}
	
	
}
