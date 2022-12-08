package aula2016_04_27;

public class Carro extends TransporteTerrestre implements Motorizado, Conduzivel{
    int numeroCilindrada;

    @Override
    void estacionar(){
        System.out.println("Estacionado");
    }
    
    @Override
    public void curvar(float angulo){
        System.out.println("Curvou "+angulo+"º");       
    }
    
    @Override
    public void abastecer(int numlitros){
        System.out.println("Abasteceu "+numlitros+" litros");
    }
    
    @Override
    public void ligarMotor(){
        
    }
    
    void embraiar(){
        
    }
    
}
