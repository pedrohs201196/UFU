package aula2016_04_27;

/**
 *
 * @author a11511BSI257
 */
public class Cubo extends FormaTridimensional {
    
    public Cubo(String nome, int lado, int x, int y, int z){
        this.nome = nome;
        this.lado = lado;
        this.x = x;
        this.y = y;
        this.z = z;
    }
    
    public float obterArea(){
        return (6* (lado*lado));
    }
    
    public float obterVolume(){
        return lado*lado*lado;
    }
}
