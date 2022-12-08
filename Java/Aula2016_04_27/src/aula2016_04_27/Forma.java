package aula2016_04_27;

/**
 * @author Pedro Henrique da Silva 11511BSI257
 */
public abstract class Forma {
    String nome;
    int lado, x, y;
    
    void setLado(int n){
        lado = n;
    }
    
    public abstract float obterArea();
     

}
