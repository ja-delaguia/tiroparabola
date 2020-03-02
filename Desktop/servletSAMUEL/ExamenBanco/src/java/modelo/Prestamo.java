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
public class Prestamo {
    public double capital;
    public double interes;
    public int tiempo;
    public double importeTotal;

    public Prestamo(double capital, double interes, int tiempo, double importeTotal) {
        this.capital = capital;
        this.interes = interes;
        this.tiempo = tiempo;
        this.importeTotal = importeTotalPrestamo( capital, interes, tiempo);
    }
    
    public double importeTotalPrestamo(double capital, double interes, int tiempo ){
        double intereses = capital*interes*tiempo/1200;
        return intereses + capital;
    }

    public double getCapital() {
        return capital;
    }

    public double getInteres() {
        return interes;
    }

    public int getTiempo() {
        return tiempo;
    }

    public double getImporteTotal() {
        return importeTotal;
    }
    
    
}
