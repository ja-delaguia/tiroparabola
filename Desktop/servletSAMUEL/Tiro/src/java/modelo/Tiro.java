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
public class Tiro {

    private double velocidadInicial;
    private int angulo;
    private double gravedad;
    private double alcanceMaximo;
    private double alturaMaxima;

    public Tiro(double velocidadInicial, int angulo) {
        this.velocidadInicial = velocidadInicial;
        this.angulo = angulo;
        this.gravedad = 9.8;
        this.alcanceMaximo = Math.pow(velocidadInicial, 2)*(Math.sin(2 * Utilidades.gradosAradianes(angulo))) / 9.8;
        this.alturaMaxima= Math.pow(velocidadInicial, 2)*Math.pow(Math.sin(Utilidades.gradosAradianes(angulo)), 2)/2*9.8;
    }

    public double getVelocidadInicial() {
        return velocidadInicial;
    }

    public int getAngulo() {
        return angulo;
    }

    public double getGravedad() {
        return gravedad;
    }

    public double getAlcanceMaximo() {
        return alcanceMaximo;
    }

    public double getAlturaMaxima() {
        return alturaMaxima;
    }

}
