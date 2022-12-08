package aula2016_04_27;

public abstract class TransporteAereo extends Transporte {
    
    int altitudeAtual;
    
    void subir(int metros){
        altitudeAtual += metros;
    }
    
    void descer(int metros){
        altitudeAtual -= metros;
    }
}
