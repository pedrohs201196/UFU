package aula2016_04_20;

/*
 * @author a11511BSI257
 */
public class FuncionarioNoturno extends Funcionario{
    
    public FuncionarioNoturno(String nome, String CPF, String sexo, int idade, float salarioBase, float valorTrabalho, int noitesTrabalhadas){
        super(nome, CPF, sexo, idade, salarioBase);
        this.valorTrabalho = valorTrabalho;
        this.noitesTrabalhadas = noitesTrabalhadas;
    }
    
    float valorTrabalho;
    int noitesTrabalhadas;
    
    float recebeSalario(){
        return salarioBase + (valorTrabalho * noitesTrabalhadas);
    }
}
