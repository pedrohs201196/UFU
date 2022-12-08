//Nessa classe fazemos o controle dos funcionários, podendo contratar funcionários novos, demitir e imprimir uma string
//com todos os funcionários

package projetofinal;

import java.util.ArrayList;

public class ControleFuncionarios {

    //ArrayList de funcionários
    private ArrayList<Funcionario> func = new ArrayList();

    //Classe que lê e salva dados em arquivo binário
    public GestaoDados gestaoDados = new GestaoDados();

    //Verifica se login é valido
    public Funcionario verificaLogin(String user, String senha) {
        for (Funcionario f : func) {
            if (f.getLogin().equals(user)) {
                if (f.getSenha().equals(senha)) {
                    return f;
                }
            }
        }

        throw new NullPointerException("\nUsuario e/ou senha incorretos, tente novamente.");
    }

    //Contrata funcionário
    public String contrataFuncionario(Funcionario f) {
        func.add(f);
        return "\n" + f.getNome() + " foi adicionado(a) a lista de funcionarios.";
    }

    //Demite funcionário
    public String demiteFuncionario(String nome) {
        Funcionario demitido = null;
        for (Funcionario f : func) {
            if (f.getNome().equals(nome)) {
                demitido = f;
                break;
            }
        }
        if (demitido instanceof Gerente) {
            throw new NullPointerException("\nGerente nao pode ser demitido!");
        } else if (demitido == null) {
            throw new NullPointerException("\nFuncionario inexistente!");
        } else {
            func.remove(demitido);
            return "\n" + nome + " foi removido(a) da lista de funcionarios.";
        }
    }

    //Imprime lista de funcionários
    public String imprimeFuncionarios() {
        String retorno = "\n";
        for (Funcionario f : func) {
            retorno += f.toString();
            retorno += "\n";
        }
        return retorno;
    }

    //Retorna o número de funcionários
    public int numeroFuncionarios() {
        if (func == null) {
            return 0;
        } else {
            return func.size();
        }
    }

    //Retorna a ArrayList de funcionários
    public ArrayList<Funcionario> getArrayList() {
        return func;
    }

    //Set da lista de funcionários
    private void setFunc(ArrayList<Funcionario> func) {
        this.func = func;
    }

    //Cria funcionários iniciais se não houver nenhum na base de dados
    public void criarFuncionariosIniciais() {
        Funcionario f1 = new Gerente("Pedro", "455", 80.00, "pedro", "pedro123");
        func.add(f1);
        Funcionario f2 = new Estoquista("Isabel", "342", 75.00, "isabel", "isabel123");
        func.add(f2);
        Funcionario f3 = new OperadorCaixa("Matheus", "765", 60.00, "matheus", "matheus123");
        func.add(f3);
    }

    //Lê dados de funcionários no arquivo binário
    public void lerDados() {
        setFunc(gestaoDados.lerDados("./dados/Funcionarios.txt"));

    }

    //Salva dados de funcionários no arquivo binário
    public void salvarDados() {
        gestaoDados.salvarDados(func, "./dados/Funcionarios.txt");
    }

}
