//Extensão da classe Funcionário. O Operador de Caixa realiza as compras do Supermercado.

package projetofinal;

public class OperadorCaixa extends Funcionario {

    //Construtor
    public OperadorCaixa(String nome, String CPF, double salario, String login, String senha) {
        super(nome, CPF, salario, login, senha);
    }

    //Imprime informações do(a) operador(a) de caixa
    public String toString() {
        return "Operador(a) de caixa: " + super.getNome() + "";
    }

}
