package aula2016_04_20;

/**
 *
 * @author a11511BSI257
 */
public class Circulo extends FormaBidimensional {
    
    int raio;
    
    public Circulo(String nome, int raio, int x, int y){
            this.nome = nome;
            this.raio = raio;
            this.x = x;
            this.y = y;
    }
    
    float obterArea(){
        return (((float) 3.14) * raio);
    }
}
