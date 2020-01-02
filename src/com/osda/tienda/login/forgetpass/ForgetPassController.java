package com.osda.tienda.login.forgetpass;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

public class ForgetPassController {

    @FXML
    private Pane paneAdmin;

    @FXML
    private JFXTextField txtUserAdmin;

    @FXML
    private JFXPasswordField txtPassAdmin;

    @FXML
    private JFXButton btnCheck;

    @FXML
    private Pane paneUser;

    @FXML
    private JFXTextField txtPassNew;

    @FXML
    private JFXTextField txtComfimPass;

    @FXML
    private JFXButton btnConfirm;

    @FXML
    private JFXButton btnCancelar;

    @FXML
    void btnCancelarOnAction(ActionEvent event) {
    	
    }

    @FXML
    void btnCheckOnAction(ActionEvent event) {
    	
    		paneUser.setDisable(false);
    }

    @FXML
    void btnConfirmOnAction(ActionEvent event) {

    }

    
    public void showWindow() {
    	try {
			FXMLLoader loader = new FXMLLoader(getClass()
					.getResource("/com/osda/tienda/login/forgetpass/ForgetPassView.fxml"));
			AnchorPane root = loader.load();
			Stage stage = new Stage();
			stage.setScene(new Scene(root, 300, 500));
			stage.setTitle("Reset Password");
			stage.centerOnScreen();
			stage.show();
		} catch(Exception e) {
			e.printStackTrace();
		}
    }
}
