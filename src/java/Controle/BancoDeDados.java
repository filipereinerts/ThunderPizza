/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controle;

import Classes.User;
import java.sql.Statement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author matheus
 */
public class BancoDeDados {
 
    
    private static final String URL = "jdbc:mysql://localhost/alugatron";
        private static final String USUARIO = "root";
        private static final String SENHA = "root";      
        private static Statement st = null;

    public BancoDeDados() throws SQLException {
        conect();
    }

    public void conect() throws SQLException{
            if(st==null){
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection c =  DriverManager.getConnection(URL, USUARIO, SENHA);
                st = (Statement) c.createStatement();
            }
        }
    
    public String isert(String[] dados, String tabela){
        
        String sql = "INSERT INTO " + tabela + " VALUES(" + String.join(",", dados) + ")";
        
        return sql;
        
        
        
        
    }
 
}
