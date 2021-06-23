/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vaksinasi;

/**
 *
 * @author 88komputer
 */

import java.sql.*;
public class koneksi {
    private static Connection koneksi;
    
    public static Connection getKoneksi() throws SQLException{
        if(koneksi == null){
            try{
                    String url = "jdbc:mysql://localhost:3306/db_vaksinasi";
                    String user = "root";
                    String passwd = "";

                    DriverManager.registerDriver(new com.mysql.jdbc.Driver());

                    koneksi = DriverManager.getConnection(url, user, passwd);
                }
            catch(SQLException e){
                System.out.println("Gagal membuat koneksi! masalah " + e);
            }
        }
        return koneksi;
    }
}
