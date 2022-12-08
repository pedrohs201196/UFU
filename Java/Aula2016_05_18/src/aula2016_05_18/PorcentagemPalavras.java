package aula2016_05_18;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;


public class PorcentagemPalavras {
    
    ArrayList<String> palavras = new ArrayList<String>(); 
    
    void lerPalavras(){
        String texto;
        BufferedReader arquivo = null; //Objeto leitor
        try{
        arquivo = new BufferedReader(
        new FileReader(
        new File("PorcentagemPalavras.txt")));
         //Instanciação do objeto leitor
         while((texto = arquivo.readLine()) != null) {
            String[] parts = texto.split("[ ]");
            
                    for(String i:parts){
                        palavras.add(i);
                    }
         }
         arquivo.close(); //fechamento do arquivo
        }catch (java.io.IOException e) {
            System.out.println("File error: " + e.toString());
        }
    
    }
}
