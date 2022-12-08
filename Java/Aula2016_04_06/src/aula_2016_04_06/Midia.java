package aula_2016_04_06;

/**
 *
 * @author Pedro H. da Silva 11511BSI257
 */
public class Midia {
    String nome, tipo, genero, ano;
    int copias;
    float preco;
    
    public Midia(String nome, String tipo, String genero, String ano, int copias, float preco){
        setNome(nome);
        setTipo(tipo);
        setGenero(genero);
        setAno(ano);
        setCopias(copias);
        setPreco(preco);
    }
    
    void setNome(String nome){
        this.nome = nome;
    }
    
    void setTipo(String tipo){
        this.tipo = tipo;
    }
    
    void setGenero(String genero){
        this.genero = genero;
    }
    
    void setAno(String ano){
        this.ano = ano;
    }
    
    void setCopias(int copias){
        this.copias = copias;
    }
    
    void setPreco(float preco){
        this.preco = preco;
    }
    
}