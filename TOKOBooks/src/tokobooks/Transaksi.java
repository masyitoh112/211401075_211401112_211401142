/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tokobooks;

import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.TimeZone;

/**
 *
 * @author Masyitoh
 */
public class Transaksi {
    public int totalTransaksi;
    public int bayarTransaksi;
    public int kembalianTransaksi;
    public String waktuTransaksi;
    public String deskripsiBuku = "";
    
    public String informasiBuku(String nama, int jumlah) {
        String deskripsi = "";
        deskripsi = nama + " x" + Integer.toString(jumlah) + "\n";

        return deskripsi;
    }
}
