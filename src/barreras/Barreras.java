/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package barreras;

import classes.Conexion;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

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
        
        Object[][] var;
        var = conexionActual.realizarQuery("select * from testfecha;");
        
        
        
        for (Object[] var1 : var) {
            for (int j = 0; j < var[0].length; j++) {
                System.out.println(var1[j]);
            }
        }
        
        
        
    }
    
}
