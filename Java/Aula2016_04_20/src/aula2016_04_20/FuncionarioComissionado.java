package aula2016_04_20;

/**
 * @author a11511BSI257
 */
public class FuncionarioComissionado extends Funcionario{
    
    public FuncionarioComissionado(String nome, String CPF, String sexo, int idade, float salarioBase, float comissao){
        super(nome, CPF, sexo, idade, salarioBase);
        this.comissao = comissao;
    }
    
    float comissao;
    
    float recebeSalario(){
        return salarioBase + comissao;
    }
}
