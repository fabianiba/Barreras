/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.sql.SQLException;
import java.lang.ClassNotFoundException;

/**
 *
 * @author cactus
 */
public class Conexion {
    
    private static Conexion instance = null;
    private static Connection conex = null;
    private static String usuario = "cactus";
    private static String clave = "731013912aix";
    private static String url = "jdbc:postgresql://localhost:5432/garita";
    
    
    /**
     * 
     * @return Objeto Conexion - Singleton
     * @throws SQLException 
     */
    public static Conexion getConexion() throws SQLException{
        if(instance == null) {
            instance = new Conexion();
        }
        return instance;
    }
    
    private Conexion() {
        try {
            Class.forName("org.postgresql.Driver");
            conex = DriverManager.getConnection(url, usuario, clave);
        } 
        catch(ClassNotFoundException | SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
    public void realizarUpdate(String sql) throws SQLException {
        Statement stmt;
        stmt = conex.createStatement();
        
        int estado;
        try {
            estado = stmt.executeUpdate(sql);
        }
        catch(SQLException e) {
            String message = e.getMessage();
            System.out.println(message);
        }
    }
   
    public Object[][] realizarQuery(String sql) throws SQLException {
        ResultSetMetaData rsmd = null;
        Statement stmt;
        ResultSet rs;
        Object[][] resultQuery = null;
        int cols;
        int rows;
        
        try {
            stmt = conex.createStatement(ResultSet.CONCUR_UPDATABLE,
                                         ResultSet.TYPE_SCROLL_SENSITIVE);
            
            rs = stmt.executeQuery(sql);
            rsmd = rs.getMetaData();
        }
        catch(SQLException e) {
            e.getMessage();
        }
        
        return resultQuery;
    }
    
    /**
     * 
     * @param rsmd
     * @return
     * @throws SQLException 
     */
    private String[] getNamesCols(ResultSetMetaData rsmd) throws SQLException {
        String[] nombres = null;
        int cols;
        
        try {
            cols = rsmd.getColumnCount();
            nombres = new String[cols];
            for (int i = 0; cols > i; i++) {
                nombres[i] = rsmd.getColumnName(i + 1);
            }
        }
        catch(SQLException e) {
            e.getMessage();
        }
        
        return nombres;    
    }

    
}
