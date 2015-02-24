/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package barreras;

import classes.Conexion;
import java.sql.SQLException;
import models.UsuarioModel;
import org.joda.time.LocalDate;

/**
 *
 * @author cactus
 */
public class Barreras {

    /**
     * @param args the command line arguments
     * @throws java.sql.SQLException
     */
    public static void main(String[] args) throws SQLException {
        
        // Obtener Conexion
        Conexion conexionActual;
        conexionActual = Conexion.getConexion();
        
        LocalDate b = new LocalDate();
        
        UsuarioModel a = new UsuarioModel("Juan", "Baglieto", "JB", "123a");
        a.setCelular(375650040);
        a.setDireccion("Avenida Siempreviva 123");
        a.setUlt_fecha_conex(b);
        a.setUlt_fecha_pass(b);
        
        a.insert(conexionActual);
        
        
        
        
        
        

    }
    
}
