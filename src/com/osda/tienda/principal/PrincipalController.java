package com.osda.tienda.principal;

import java.io.IOException;

import com.jfoenix.controls.JFXButton;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;

public class PrincipalController {

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
    
    private PrincipalModel princiaplModel = new PrincipalModel();

    @FXML
    void bpRootOnMouse(MouseEvent event) {
    	lblIam.setText(new PrincipalModel().getNombre());
    	System.out.println("excelente");
    }
    
    @FXML
    void btnCloseSesion(ActionEvent event) {
    	try {
			princiaplModel.closeSesion(bpRoot);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
