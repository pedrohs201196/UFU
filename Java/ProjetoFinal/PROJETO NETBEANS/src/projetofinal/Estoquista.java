//Extensão de funcionário. O estoquista cuida de toda parte que envolve produtos e estoque.

package projetofinal;

public class Estoquista extends Funcionario {

    //Construtor
    public Estoquista(String nome, String CPF, double salario, String login, String senha) {
        super(nome, CPF, salario, login, senha);
    }

    //Imprime informações do(a) estoquista
    public String toString() {
        return "Estoquista: " + super.getNome() + "";
    }
}
