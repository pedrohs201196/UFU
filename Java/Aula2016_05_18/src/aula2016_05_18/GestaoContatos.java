package aula2016_05_18;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;


public class GestaoContatos {
    ArrayList <Contato> familia = new ArrayList <Contato>(10);
    ArrayList <Contato> amigos = new ArrayList <Contato>(10);
    ArrayList <Contato> profissional = new ArrayList <Contato>(10);
    
    void adicionaContato (Contato c, int n){
        if (n == 0)
            familia.add(c);
        if (n == 1)
            amigos.add(c);
        if (n == 2)
            profissional.add(c);
    }
    
    void eliminaContato (String nome){
        
        boolean removeu = false;
        
        for(Contato c : familia){
            if (c.nome.equals(nome)){
                familia.remove(c);
                removeu = true;
            }
        }
        
        for(Contato c: amigos){
            if (c.nome.equals(nome)){
                amigos.remove(c);
                removeu = true;
            }
        }
        
        for(Contato c: profissional){
            if (c.nome.equals(nome)){
                profissional.remove(c);
                removeu = true;
            }
        }
        
    }
    
    void listaContatos (){
        for(Contato c: familia){
            System.out.println(""+c.toString()+"");
        }
        for(Contato c: amigos){
            System.out.println(""+c.toString()+"");
        }
        for(Contato c: profissional){
            System.out.println(""+c.toString()+"");
        }
    }
    
    String maisVelho(ArrayList<Contato> lista){
        
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
    
    void salvaContatos(){
        
        String texto = "";
        
        for(Contato c: familia){
            texto += c.toString();
        }
        for(Contato c: amigos){
            texto += c.toString();
        }
        for(Contato c: profissional){
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
        } 
        catch(IOException e){
            e.printStackTrace();
        }
    }
    
    void salvaContatosbin(){
        //FAZER ESSA JOÇA!!
    }
}
