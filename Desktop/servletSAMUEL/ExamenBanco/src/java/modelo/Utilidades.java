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
    
    public static ArrayList<String> getMeses() {
       ArrayList<String> meses = new ArrayList<String>();
       for (int i=1;i<=10;i++){
        meses.add(String.valueOf(i*12));
        }
       return meses;
    }
    
    
    
    public static double calculaPrestamo(double cantidad, double interes, int meses ){
        double total = cantidad * interes * meses /3600;
        return total;
    }
    
     public static ArrayList<Cuota> generaListaCuotas ( int num_cuotas, double importeTotal) {
        ArrayList<Cuota> cuotas = new ArrayList<Cuota>();
        double importePorCuota = importeTotal /  num_cuotas;
        for ( int i=1; i<=num_cuotas; i++) {
            double interesesCuota  = importePorCuota - importePorCuota * ( i - 1)/ num_cuotas;
            double capitalCuota = importePorCuota - interesesCuota;
            Cuota miCuota = new Cuota(i, importePorCuota,capitalCuota, interesesCuota );
            cuotas.add(miCuota);
        }
        return cuotas;
    }
}
