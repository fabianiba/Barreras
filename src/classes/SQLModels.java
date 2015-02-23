/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.SQLException;

/**
 *
 * @author cactus
 */
public interface SQLModels {
    
    boolean insert(Conexion conex) throws SQLException;
    boolean delete(Conexion conex) throws SQLException;
    boolean update(Conexion conex) throws SQLException;
    
}
