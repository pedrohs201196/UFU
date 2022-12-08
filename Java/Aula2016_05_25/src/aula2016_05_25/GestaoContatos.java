
package aula2016_05_25;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;


import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;


public class GestaoContatos {
    
    private static GestaoContatos instance;
    
    private GestaoContatos(){
        
    }
    public static GestaoContatos getInstance(){
        if (instance == null){
            instance = new GestaoContatos();
        }
        
        return instance;
    }
    
    ArrayList <Contato> contatos = new ArrayList <Contato>(10);
    
    public void adicionaContato (Contato c){
            contatos.add(c);
            System.out.println(c.toString());
    }
    
    public boolean eliminaContato (String nome){
        
        boolean removeu = false;
        
        Contato removido = null;
        for(Contato c : contatos){
            if (c.nome.equals(nome)){
                removido = c;
                break;
            }
        }
        
        if (removido != null){
            contatos.remove(removido);
            removeu = true;
        }
        return removeu;
        
    }
    
    public void listaContatos (){
        for(Contato c: contatos){
            System.out.println(""+c.toString()+"");
        }
    }
    
    public String maisVelho(ArrayList<Contato> lista){
        
        String maiorNome = lista.get(0).nome;
        int maiorIdade = lista.get(0).idade; 
        for(Contato c: lista){
            if (c.idade > maiorIdade){
                maiorIdade = c.idade;
                maiorNome = c.nome;
            }
        }
        
        return maiorNome;
    }
    
    public boolean salvaContatos(){
       
        boolean retorno = false;
        
        String texto = "";
        
        for(Contato c: contatos){
            texto += c.toString();
        }

        
        BufferedWriter escritor = null; //objeto escritor
        try{
            escritor = new BufferedWriter(
             new FileWriter(
            new File("Contatos.txt")));
            //Instanciação do objeto escritor
             escritor.write(texto); //Gravação do texto
             escritor.flush(); //descarga do buffer de escrita
             escritor.close(); //fechamento do arquivo
             retorno = true;
        } 
        catch(IOException e){
            e.printStackTrace();
        }
        
        return retorno;
    }
    
    void salvaContatosbin(){
        //FAZER ESSA JOÇA!!
    }
}
