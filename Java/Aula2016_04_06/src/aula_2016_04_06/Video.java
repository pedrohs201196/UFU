package aula_2016_04_06;

/**
 * @author Pedro
 */
public class Video extends Midia {
    protected String diretor, classificacao;
    private int duracao;
    
    public Video(String nome, String tipo, String genero, String ano, int copias, float preco, String diretor, String classificacao, int duracao){
        super(nome, tipo, genero, ano, copias, preco);
        setDiretor(diretor);
        setClassificacao(classificacao);
        setDuracao(duracao);     
    }
    
    void setDiretor(String diretor){
        this.diretor = diretor;
    }
    
    void setClassificacao(String classificacao){
        this.classificacao = classificacao;
    }
    
    void setDuracao(int duracao){
        this.duracao = duracao;
    }
    
    
}
