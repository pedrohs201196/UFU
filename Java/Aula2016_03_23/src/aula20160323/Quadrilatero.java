package aula20160323;

/*
 * @author Pedro Henrique da Silva 11511BSI257
 */

public class Quadrilatero {
    
    private Ponto A = new Ponto();
    private Ponto B = new Ponto();
    private Ponto C = new Ponto();
    private Ponto D = new Ponto();
    
    public void setA (float v1, float v2){
        A.setPonto(v1, v2);
    }
    
    public void setB (float v1, float v2){
        B.setPonto(v1, v2);
    }
    
    public void setC (float v1, float v2){
        C.setPonto(v1, v2);
    }
    
    public void setD (float v1, float v2){
        D.setPonto(v1, v2);
    }
    
    public boolean naoQuadrilatero(){
        return ((A.saoIguais(B)) || (A.saoIguais(C)) || (A.saoIguais(C)) ||
                (B.saoIguais(C)) || (B.saoIguais(D)) || (C.saoIguais(D)));
    }
    
    public float perimetro (){
        return A.distancia(B) + B.distancia(C) + C.distancia(D) + D.distancia(A);
    }
    
    public boolean ehQuadrado (){
        return ((A.distancia(B) == B.distancia(C)) &&
                (B.distancia(C) == C.distancia(D)) &&
                (C.distancia(D) == D.distancia(A)) &&
                (D.distancia(A) == A.distancia(B)));
    }
    
    public String retornaVertices(){
        return ""+A.showPonto()+"/"+B.showPonto()+"/"+C.showPonto()+"/"+D.showPonto()+"";
    } 
}