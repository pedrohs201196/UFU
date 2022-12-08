package aula_2016_04_06;

/**
 * @author Pedro
 */

public class Audio extends Midia{
    protected String cantor;
    private int n_Faixas;
    
    public Audio(String nome, String tipo, String genero, String ano, int copias, float preco, String cantor, int n_faixas){
        super(nome, tipo, genero, ano, copias, preco);
        setCantor(cantor);
        setN_Faixas(n_faixas);
    }
    
    void setCantor(String cantor){
        this.cantor = cantor;
    }
    
    void setN_Faixas(int n_Faixas){
        this.n_Faixas = n_Faixas;
    }
}
