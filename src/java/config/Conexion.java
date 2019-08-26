/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Jorge
 */
public class Conexion {
    Connection conexion;
    String url= "jdbc:mysql://localhost:3306/bdcontactos";
    String usuario="root";
    String pass="";

    public Connection Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion= DriverManager.getConnection(url, usuario, pass);
            
        } catch (Exception e) {
        }
        return conexion;
    }

}
