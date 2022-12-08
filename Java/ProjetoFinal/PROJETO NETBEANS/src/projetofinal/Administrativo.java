//Nessa classe guardamos o mês que o programa está se passando, os cupons de todas as compras realizadas, todos os relatórios
//e o dinheiro total atual do supermercado. 

package projetofinal;

import java.io.Serializable;
import java.util.ArrayList;

public class Administrativo implements Serializable {

    private int mes = 1; //Mês atual (começa em 1)
    private String cupomMes = ""; //Cupons fiscais gerados no mês
    private ArrayList<String> vendasDoMes = new ArrayList(); //Vendas realizadas no mês
    private ArrayList<String> relatorios = new ArrayList(); //Relatórios de todos os meses
    private double receita, despesa, gastoSalarios, gastoProdutos, dinheiroTotal; //Receita mensal, despesa mensal, gasto com salários, gasto com reabastecimento de estoque, dinheiro total do supermercado

    //Construtor
    public Administrativo(double receita, double despesa, double gastoSalarios, double gastoProdutos, double dinheiroTotal) {
        this.receita = receita;
        this.despesa = despesa;
        this.gastoSalarios = gastoSalarios;
        this.gastoProdutos = gastoProdutos;
        this.dinheiroTotal = dinheiroTotal;
    }

    //Soma o valor no DinheiroTotal
    protected String somaDinheiroTotal(double valor) {
        this.dinheiroTotal += valor;
        this.receita += valor;

        return "" + valor + " adicionado ao dinheiro total";
    }

    //Subtrai o valor no DinheiroTotal
    protected String subtraiDinheiroTotal(double valor) {
        this.dinheiroTotal -= valor;
        this.despesa += valor;
        this.gastoProdutos += valor;

        return "Foram gastos R$ " + valor + "";
    }

    //Retorna lucro
    public double getLucro() {
        return receita - despesa;
    }

    //Retorna mês atual
    public int getMes() {
        return mes;
    }

    //Paga os salários dos funcionários
    public void pagarFuncionarios(ArrayList<Funcionario> func) {
        for (Funcionario f : func) {
            gastoSalarios += f.getSalario();
            despesa += f.getSalario();
        }
    }

    //Acrescenta os gastos com produtos na despesa mensal
    public void adicionarCompras(double valor) {
        gastoProdutos += valor;
        despesa += valor;
    }

    //Fecha mês
    public String fechaMes(ArrayList<Funcionario> func) {
        pagarFuncionarios(func);
        String relatorio = fluxoCaixaMensal();
        dinheiroTotal += getLucro();
        receita = 0;
        despesa = 0;
        gastoSalarios = 0;
        gastoProdutos = 0;
        relatorios.add(relatorio);
        if ("".equals(cupomMes)) {
            vendasDoMes.add("\nNao houveram compras nesse mes\n");
        } else {
            vendasDoMes.add(cupomMes);
        }
        mes++;
        return relatorio;
    }

    //Imprime fluxo de caixa do mês atual
    public String fluxoCaixaMensal() {
        String relatorio = "";
        relatorio += "\n============FLUXO DE CAIXA MES " + mes + "============\n\n";
        relatorio += "Dinheiro total: R$ " + dinheiroTotal + "\n";
        relatorio += "Receita: R$ " + receita + "\n";
        relatorio += "Despesas: R$ " + despesa + "\n";
        relatorio += "Gasto com pagamento salarios: R$ " + gastoSalarios + "\n";
        relatorio += "Gasto com reabastecimento de estoque: R$ " + gastoProdutos + "\n";
        relatorio += "Lucro: R$ " + getLucro() + "";

        return relatorio;
    }

    //Retorna string com o relatório do mês n
    public String relatorioMesN(int n) {
        return relatorios.get(n - 1);
    }

    //Adiciona cupom fiscal ao array de cupons
    public void addCupom(String cupom) {

        cupomMes += "\n\n";
        cupomMes += cupom;
    }

    //Retorna string com as compras do mês n
    public String comprasMesN(int n) {
        return vendasDoMes.get(n - 1);
    }
}
