/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package barreras;

import classes.Conexion;
import java.sql.SQLException;


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
        
        String sql;
        sql = "INSERT INTO test VALUES (5, 'Testeando', 'Perez');";
        conexionActual.realizarUpdate(sql);
        
        
        // TipoObjCrear var = conexionActual.realizarQuery(sql);
    }
    
}
