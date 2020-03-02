/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author DAW207
 */
public class Cuota {
   public int numeroCuota;
   public double importe;
   public double capital;
   public double intereses;

    public Cuota(int numeroCuota, double importe, double capital, double intereses) {
        this.numeroCuota = numeroCuota;
        this.importe = importe;
        this.capital = capital;
        this.intereses = intereses;
    }

    public int getNumeroCuota() {
        return numeroCuota;
    }

    public String getCapitalString() {
        return String.format("%.2f", capital);
       
    }
    
    public double getImporte() {
        return importe;
    }

    public double getCapital() {
        return capital;
    }

    public double getIntereses() {
        return intereses;
    }
   
   
    
}
