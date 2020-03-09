/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import static java.lang.Math.pow;
import static java.lang.Math.sin;

/**
 *
 * @author DAW207
 */
public class tiro {
    private double velocidadInicial;
    private int angulo;
    private int gravedad;
    private double alcanceMaximo;
    private double alturaMaxima;

    public tiro(double velocidadInicial, int angulo, int gravedad, double alcanceMaximo, double alturaMaxima) {
        this.velocidadInicial = velocidadInicial;
        this.angulo = angulo;
        this.gravedad = gravedad;
        this.alcanceMaximo = alcanceMaximo;
        this.alturaMaxima = alturaMaxima;
    }
    
    public double alcanceMaximo(double valocidad, int angulo, int gravedad ){
        double distancia= Math.pow(valocidad, 2)*sin(2*angulo)/gravedad;
        return distancia;
    }
    public double alturaMaxima(double velocidad, int angulo, int gravedad ){
        double altura = Math.pow(velocidad, 2)*pow(sin(angulo),2)/2*gravedad;
        return altura;
    }

    public double getVelocidadInicial() {
        return velocidadInicial;
    }

    public int getAngulo() {
        return angulo;
    }

    public int getGravedad() {
        return gravedad;
    }

    public double getAlcanceMaximo() {
        return alcanceMaximo;
    }

    public double getAlturaMaxima() {
        return alturaMaxima;
    }
    
    
}
