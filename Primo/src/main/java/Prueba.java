
import java.util.ArrayList;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Lourdes Pérez
 */
public class Prueba {
    public static void main(String[] args){
        int valor = 15;
        List<Integer> lista = new ArrayList<Integer>();
        for(int i =0; i>=2; i--){
            //seteamos el primer valor que en este caso es el insertado y evaluaremos si es primo
            int resta = valor; 
            int modulo = 0;
            //vamos a dividir con modulo de 2 a 9 el valor de resta
            for(int j=2; j<=9; j++){
                modulo = resta % j;
                if(modulo!=0){
                    lista.add(resta);
                }
            }
            resta = resta -1;
          } 
        for(int i=0; i<lista.size()-1; i++){
            System.out.println(lista.get(i));
        }
    }
}
