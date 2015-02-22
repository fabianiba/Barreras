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
    
    /**
     * 
     * @param sql
     * @throws SQLException 
     */
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
    
    /**
     * 
     * @param sql
     * @return Object[][]
     * @throws SQLException
     * Retorna una matriz de Objetos con los datos de la consulta.
     */
    public Object[][] realizarQuery(String sql) throws SQLException {
        ResultSetMetaData rsmd;
        Statement stmt;
        ResultSet rs;
        Object[][] resultQuery = null;
        String[] nombresCols;
        int cols;
        int rows;
        
        try {
            stmt = conex.createStatement(ResultSet.CONCUR_UPDATABLE,
                                         ResultSet.TYPE_SCROLL_SENSITIVE);
            rs = stmt.executeQuery(sql);
            rsmd = rs.getMetaData();
            
            cols = rsmd.getColumnCount();
            rs.last();
            rows = rs.getRow();
            resultQuery = new Object[rows + 1][cols];
            
            nombresCols = this.getNamesCols(rsmd);
            System.arraycopy(nombresCols, 0, resultQuery[0], 0, cols);
            
            rs.first();
            for (int i = 1; i < rows + 1; i++) {
                for (int j = 0; j < cols; j++) {
                    resultQuery[i][j] = rs.getString(j + 1);
                }
                rs.next();
            }   
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
