package com.osda.tienda.login;

import java.sql.SQLException;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;

public class LoginController {
	
    @FXML
    private JFXTextField txtUsuario;
    @FXML
    private JFXPasswordField txtPassword;
    @FXML
    private Label lblForget;
    @FXML
    private JFXButton btnCancel;
    @FXML
    private JFXButton btnStart;

    @FXML
    void btnCancelOnAction(ActionEvent event) throws SQLException {    	
    	System.exit(0);
    }

    @FXML
    void btnStartOnAction(ActionEvent event) throws ClassNotFoundException, SQLException {
    	boolean logCorrect = new LoginModel().logNow(txtUsuario.getText().toString().trim(), txtPassword.getText().toString().trim());
    	
    	if (logCorrect) {
    		
    	}else {
    		
    	}
    }

    @FXML
    void lblForgetOnMouseClicked(MouseEvent event) {
    	 new LoginModel().goToForegetPass();
    }

}
