package aula20160323;

/**
 *
 * @author Pedro Henrique da Silva 11511BSI257
 */
public class Ponto {
    
    private float x,y;
    
    //Inicializar coordenada
    public void setPonto(float v1, float v2){
        if (v1 >= 0) 
            setX(v1);
        if (v2 >= 0) 
            setY(v2);
    }
    
    //Atribuir valor a X
    public void setX(float v){
        x = v;
    }
    
    //Atribuir valor a Y
    public void setY(float v){
        y = v;
    }
    
    //Calcular distância até outro ponto   
    public float distancia(Ponto p2){
        return (float) Math.sqrt(((p2.x - x)*(p2.x - x) + (p2.y - y)*(p2.y - y)));
    }   
    
    //Mostrar coordenada
    public String showPonto(){
        return ""+x+","+y+"";
    }
    
    //Ver se dois pontos são iguais
    public boolean saoIguais (Ponto p2)
    {
        return ((x == p2.x) && (y == p2.y));
    }
    
}
