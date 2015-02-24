/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;
import classes.Conexion;
import classes.SQLModels;
import java.sql.SQLException;
import org.joda.time.LocalDate;

/**
 *
 * @author cactus
 */
public class UsuarioModel implements SQLModels {
    
    private int id_usuario;
    private String nombre;
    private String apellido;
    private String usuario;
    private String pass;
    private LocalDate ult_fecha_conex = null;
    private LocalDate ult_fecha_pass = null;
    private int celular;
    private String direccion;

    public UsuarioModel() {
    }
    
    public UsuarioModel(String n, String a, String u, String p) {
        this.nombre = n;
        this.apellido = a;
        this.usuario = u;
        this.pass = p;
    }
    
    public int getId_usuario() {
        return id_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getPass() {
        return pass;
    }

    public LocalDate getUlt_fecha_conex() {
        return ult_fecha_conex;
    }

    public LocalDate getUlt_fecha_pass() {
        return ult_fecha_pass;
    }

    public int getCelular() {
        return celular;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setUlt_fecha_conex(LocalDate ult_fecha_conex) {
        this.ult_fecha_conex = ult_fecha_conex;
    }

    public void setUlt_fecha_pass(LocalDate ult_fecha_pass) {
        this.ult_fecha_pass = ult_fecha_pass;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    @Override
    public boolean insert(Conexion conex) throws SQLException{
        boolean result = false;
        String sentencia;
        
        sentencia = "INSERT INTO usuario VALUES (DEFAULT,"
                    + "'" + this.getNombre() + "'" + ","
                    + "'" + this.getApellido() + "'" + ","
                    + "'" + this.getUsuario() + "'" + ","
                    + "'" + this.getPass() + "'" + ","
                    + "'" + this.getUlt_fecha_conex() + "'" + ","
                    + "'" + this.getUlt_fecha_pass() + "'" + ","
                    + "'" + this.getCelular() + "'" + ","
                    + "'" + this.getDireccion() + "'" + ");";
                
        try{
            conex.realizarUpdate(sentencia);
            result = true;
        }
        catch(SQLException e) {
            e.getMessage();
        }
        return result;
    }

    @Override
    public boolean delete(Conexion conex) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public boolean update(Conexion conex) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    
    
    
}
