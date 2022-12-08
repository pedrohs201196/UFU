package aula2016_04_20;

/**
 * @author Pedro Henrique da Silva 11511BSI257
 */
public class Forma {
    String nome;
    int lado, x, y;
    
    void setLado(int n){
        lado = n;
    }
    
     float obterArea(){
        return lado*lado;
    }
     
    float obterVolume(){
        return lado*lado*lado;
    }
}
