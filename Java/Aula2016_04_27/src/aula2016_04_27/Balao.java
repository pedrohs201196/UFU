package aula2016_04_27;

public class Balao extends TransporteAereo{
    int pesoLargada;
    
    void largarPeso(float peso){
        System.out.println("Peso largado: "+peso+"");
    }
    
    void aqueceAr(float temp){
        System.out.println("Aumento de temperatura: "+temp+"º");
    }
    
}
