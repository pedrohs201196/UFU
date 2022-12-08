package aula2016_04_27;

public abstract class Transporte {
    
    String nome;
    int numeroPassageiros, velocidadeAtual;
    
    boolean estaParado(){
        return this.velocidadeAtual == 0;
    }
}
