package aula_2016_04_06;



/*
 * @author Pedro Henrique da Silva 11511BSI257
 */
public class Funcionario {
    String nome, rg;
    float sbase;
    
    public Funcionario(String nome, String rg, float sbase){
        setNome(nome);
        setRg(rg);
        setSalarioBase(sbase);  
    }
    
    protected void setNome(String nome){
        this.nome = nome;
    }
    
    protected void setRg(String rg){
        this.rg = rg;
    }
    
    protected void setSalarioBase(float sbase){
        this.sbase = sbase;
    }
    
    
}
