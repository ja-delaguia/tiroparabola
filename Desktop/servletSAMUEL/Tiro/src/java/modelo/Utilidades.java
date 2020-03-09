/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author DAW207
 */
public class Utilidades {
        public static ArrayList<String> getAngulo() {
       ArrayList<String> angulo = new ArrayList<String>();
       for (int i=1;i<=19;i++){
        angulo.add(String.valueOf(i*10));
        }
       return angulo;
    }
    
    
    
    public static double gradosAradianes(double angulo){
        double anguloRadial = 0;
        anguloRadial = (double) (angulo * Math.PI/180);
        return anguloRadial;
    }
}
