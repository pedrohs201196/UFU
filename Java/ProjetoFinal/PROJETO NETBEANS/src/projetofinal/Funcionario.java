//Classe abstrata funcionário, cada funcionário tem nome, cpf, login e senha para entrar no sistema e seu salário.

package projetofinal;

import java.io.Serializable;

public abstract class Funcionario implements Serializable {

    private String nome, CPF, login, senha;
    private double salario;

    //Construtor
    public Funcionario(String nome, String CPF, double salario, String login, String senha) {
        this.nome = nome;
        this.CPF = CPF;
        this.salario = salario;
        this.login = login;
        this.senha = senha;
    }

    //Imprime informações do funcionário
    public String toString() {
        return "Nome: " + nome + ", CPF: " + CPF + ", Salario: " + salario + ", Login: " + login + "";
    }

    //Set
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCPF(String CPF) {
        this.CPF = CPF;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    //Get
    public String getNome() {
        return nome;
    }

    public String getCPF() {
        return CPF;
    }

    public double getSalario() {
        return salario;
    }

    public String getLogin() {
        return login;
    }

    public String getSenha() {
        return senha;
    }

}
