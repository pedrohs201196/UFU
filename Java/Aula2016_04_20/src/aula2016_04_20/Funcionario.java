package aula2016_04_20;

/*
 * @author a11511BSI257
 */

public class Funcionario {
    
    public Funcionario(String nome, String CPF, String sexo, int idade, float salarioBase){
        this.nome = nome;
        this.CPF = CPF;
        this.sexo = sexo;
        this.idade = idade;
        this.salarioBase = salarioBase;
    }
    
    String nome, CPF, sexo;
    int idade;
    float salarioBase;
    
    float recebeSalario(){
        return salarioBase;
    }
}
