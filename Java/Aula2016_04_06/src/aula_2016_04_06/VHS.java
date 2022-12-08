package aula_2016_04_06;

/**
 * @author Pedro
 */
public class VHS extends Video {
    private int rebobinada;
    
    public VHS(String nome, String tipo, String genero, String ano, int copias, float preco, String diretor, String classificacao, int duracao, int rebobinada){
        super(nome, tipo, genero, ano, copias, preco, diretor, classificacao, duracao); 
        setRebobinada(rebobinada);
    }
    
    void setRebobinada(int rebobinada){
        this.rebobinada = rebobinada;
    }
    
    String checkRebobinada(){
        if (this.rebobinada == 0)
            return "Nao";
        else
            return "Sim";                 
    }
}
