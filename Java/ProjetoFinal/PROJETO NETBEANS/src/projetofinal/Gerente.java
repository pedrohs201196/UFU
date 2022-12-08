//Extensão da classe Funcionário. O Gerente cuida de toda a parte administrativa do supermercado.

package projetofinal;

public class Gerente extends Funcionario {

    //Construtor
    public Gerente(String nome, String CPF, double salario, String login, String senha) {
        super(nome, CPF, salario, login, senha);
    }

    //Imprime informações do(a) gerente
    public String toString() {
        return "Gerente: " + super.getNome() + "";
    }
}
