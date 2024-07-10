/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Ican
 */
public class config1 {
    public static Connection con;
    
    public static Connection Con(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/db_javabuku","root","");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return con;
    }
    
    public static void main(String args[]){
        System.out.println(config1.Con());
    }
}
