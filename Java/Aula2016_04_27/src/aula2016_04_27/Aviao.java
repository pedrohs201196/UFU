package aula2016_04_27;

public class Aviao extends TransporteAereo implements Motorizado, Conduzivel {
    
    int numeroMotores;
    
    public void curvar(float angulo){
        System.out.println("Curvou "+angulo+"º");
    }
    
    public void abastecer(int numlitros){
        System.out.println("Abasteceu "+numlitros+" litros");
    }
    
    public void ligarMotor(){
        System.out.println("Motor ligado");
    }
}
