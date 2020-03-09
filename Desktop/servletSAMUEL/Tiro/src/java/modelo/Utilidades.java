
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DAW207
 */
public class Utilidades {
    public static ArrayList<String> getAngulo() {
       ArrayList<String> angulo = new ArrayList<String>();
       for (int i=1;i<=10;i++){
        angulo.add(String.valueOf(i*10));
        }
       return angulo;
    }
    
    
    
    public static double gradosAradianes(double angulo){
        double totalgrados = angulo*Math.PI/180;
        return totalgrados;
    }
}
