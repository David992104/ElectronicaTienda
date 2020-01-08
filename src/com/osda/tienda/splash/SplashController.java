package com.osda.tienda.splash;

import com.jfoenix.controls.JFXProgressBar;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.ProgressBar;
import javafx.scene.image.ImageView;

public class SplashController {

	class HiloCargarBarra implements Runnable {
		@SuppressWarnings("deprecation")
		@Override
		public void run() {			
			byte i = 0;
			while (i <= 100) {
				try {
					Thread.sleep(500);
				} catch (Exception e) {
					System.out.println("Ya lo descompusiste");
				}
				pbUno.setProgress(i / 100.0);
				// pbDos.setProgress(i/100.0);
				i += 10;
				if (i == 100) {							
					hilo.suspend();					
				}
			}
		}
	}

	public SplashController() {
		hilo = new Thread(new HiloCargarBarra());
		hilo.start();								
	}

	@FXML
	private ImageView imgSpalsh;
	@FXML
	private Label lblText;
	@FXML
	private JFXProgressBar pbUno;
	@FXML
	private ProgressBar pbDos;

	Thread hilo;

	
}
