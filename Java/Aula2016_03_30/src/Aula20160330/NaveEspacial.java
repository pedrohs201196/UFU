package Aula20160330;
import java.util.Random;

/**
 * @author Pedro Henrique da Silva 11511BSI257
 */

public class NaveEspacial {
    private String nome;
    private int velocidade;
    
    public NaveEspacial(String nome, int v){    
        setNome(nome);
        setSpeed(v);    
    }
    
    void setNome(String s){
        nome = s;
    }
    
    void setSpeed(int v){
        velocidade = v;
    }
    
    String mostrarNave(){
        if(velocidade == 0)
            return "Nave Inoperante";
        return "Nome: "+nome+"\nVelocidade:"+velocidade+"";
    }
    
    String naveNaFrente(NaveEspacial n){
        if(velocidade > n.velocidade)
            return ""+nome+" eh a vencedora!";
        if(velocidade < n.velocidade)
            return ""+n.nome+" eh a vencedora!";
        
        //duas naves possuem a mesma velocidade
            return "Empate...";
    }
}
