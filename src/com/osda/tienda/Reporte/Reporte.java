package com.osda.tienda.Reporte;

import java.sql.Connection;
import java.sql.SQLException;

import com.osda.tienda.dbconection.ConnectionDB;
import java.io.InputStream;
import javax.swing.JFrame;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.swing.JRViewer;

public class Reporte {
    private String reporte;
    
    public Reporte(String reporte){
        this.reporte = reporte;
    }
    
    public void generarReporte() throws ClassNotFoundException, SQLException{
    	 ConnectionDB conexion = new  ConnectionDB();
        Connection conn = conexion.getConnection("Desde el genrado de reportes");
        
        try{
            InputStream dir = getClass().getResourceAsStream("/com/osda/tienda/Reporte/"+
                    this.reporte+".jrxml");
            JasperReport jr = JasperCompileManager.compileReport(dir);
            JasperPrint jp = JasperFillManager.fillReport(jr, null, conn);
            
            JRViewer test = new JRViewer(jp);
            JFrame frame = new JFrame("Report");
            frame.getContentPane().add(test);
            frame.setExtendedState(JFrame.MAXIMIZED_BOTH);
            frame.pack();
            frame.setVisible(true);
        }catch(Exception ex){
            System.out.println("Error al generar el reporte "+this.reporte+": "+ex);
        }
    }
    
	
	
}
