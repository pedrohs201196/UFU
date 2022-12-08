package aula_2016_04_06;



/*
 * @author a11511BSI257
 */
public class Vendedores extends Funcionario{
    
    protected float vendas;
    
    public Vendedores(String nome, String rg, float sbase){
        super(nome,rg,sbase);
    }
    
    void setVendas(float vendas){
        this.vendas = vendas;
    }
    
    float retornaSalario(){
        float salario = 0;
        salario += (this.vendas*5)/100;
        salario += sbase;
        this.vendas = 0;
        return salario;
    }
    
    void addVendas(float novasVendas){
        this.vendas += novasVendas;
    }
}
