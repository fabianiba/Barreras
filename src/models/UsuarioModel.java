/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;
import classes.Conexion;
import classes.SQLModels;
import java.util.Calendar;

/**
 *
 * @author cactus
 */
public class UsuarioModel {
    
    private int id_usuario;
    private String nombre;
    private String apellido;
    private String usuario;
    private String pass;
    private Calendar ult_fecha_conex;
    private Calendar ult_fecha_pass;
    private int celular;
    private String direccion;

    public UsuarioModel() {
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

    public Calendar getUlt_fecha_conex() {
        return ult_fecha_conex;
    }

    public Calendar getUlt_fecha_pass() {
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

    public void setUlt_fecha_conex(Calendar ult_fecha_conex) {
        this.ult_fecha_conex = ult_fecha_conex;
    }

    public void setUlt_fecha_pass(Calendar ult_fecha_pass) {
        this.ult_fecha_pass = ult_fecha_pass;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    
    
    
}
