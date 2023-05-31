/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tokobooks;

import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Masyitoh
 */
public class Buku {
    String kode;
    String judul;
    float harga;
    
    static ArrayList<Buku> daftarBuku;
    public static void loadBukuFromDB()
    {
        daftarBuku = new ArrayList<Buku>(); 
        Buku buku;
        try {
            Statement stmt = DBConnector.connection.createStatement();
            
            String sql = "SELECT *FROM buku";
            
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next())
            {
                buku =  new Buku();
                buku.kode = Integer.toString( rs.getInt("kode"));
                buku.judul = rs.getString("judul");
                buku.harga = rs.getFloat("harga");
                
                daftarBuku.add(buku);
            }
        } 
    
        catch (Exception ex) {
            System.out.println(ex);
        }
    }
}
