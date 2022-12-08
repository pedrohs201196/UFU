package aula2016_04_27;


public class Bicicleta extends TransporteTerrestre implements Conduzivel{

   
    @Override
    void estacionar() {
        System.out.println("Estacionado");
    }
    
    @Override
    public void curvar(float angulo){
        System.out.println("Curvou "+angulo+"º");
    }
    
    void pedalar(){
        System.out.println("Pedalando");
    }
    
}
