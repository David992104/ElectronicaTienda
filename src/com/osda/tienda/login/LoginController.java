package com.osda.tienda.login;

import java.sql.SQLException;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import com.osda.tienda.dbconection.CRUD;
import com.osda.tienda.dbconection.ConnectionDB;
import com.osda.tienda.login.forgetpass.ForgetPassController;

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
    	ConnectionDB.closeConnection();
    	System.exit(0);
    }

    @FXML
    void btnStartOnAction(ActionEvent event) throws ClassNotFoundException, SQLException {
    	ConnectionDB.getConnection();
    	new CRUD().loginUser(txtUsuario.getText().toString().trim(), txtPassword.getText().toString().trim());
    }

    @FXML
    void lblForgetOnMouseClicked(MouseEvent event) {
    	 new ForgetPassController().showWindow();
    }

}
