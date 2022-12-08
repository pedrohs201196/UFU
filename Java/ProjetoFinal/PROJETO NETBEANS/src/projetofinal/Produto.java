//Classe que guarda a informação de um produto

package projetofinal;

import java.io.Serializable;

public class Produto implements Serializable {

    private String nome; //Nome do produto
    private int quantEstoque, codigo; //Quantidade do produto disponível em estoque, código do produto
    private float margemLucro; //Porcentagem de lucro em cima do valor do produto
    private double precoCompra; //Preço pago ao fornecedor pelo produto
    private int vendidosMes = 0; //Unidades do produto vendidas no mês

    //Construtor
    public Produto(String nome, int quantEstoque, int codigo, double precoCompra, float margemLucro) {
        this.nome = nome;
        this.quantEstoque = quantEstoque;
        this.codigo = codigo;
        this.precoCompra = precoCompra;
        this.margemLucro = margemLucro;
        this.vendidosMes = 0;
    }

    //Retorna valor de venda do produto
    public double valorVenda() {
        return precoCompra + (precoCompra * ((double) margemLucro / 100));
    }

    //Retorna informações do produto
    @Override
    public String toString() {

        return "\nNome: " + nome + "\nCod.: " + codigo + "\nValor de Venda: R$ " + String.format("%.2f", valorVenda()) + "\n" + quantEstoque + " unidades no estoque";
    }

    //Adiciona unidade(s) do produto
    public void adicionaQuantidade(int quant) {
        this.quantEstoque += quant;
    }

    //Subtrai unidade(s) do produto
    public void subtraiQuantidade(int quant) {
        this.quantEstoque -= quant;
    }

    //Set
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setQuant(int quant) {
        this.quantEstoque = quant;
    }

    public void setMargemLucro(float margemLucro) {
        this.margemLucro = margemLucro;
    }

    public void setPrecoCompra(float precoCompra) {
        this.precoCompra = precoCompra;
    }

    //Get
    public String getNome() {
        return this.nome;
    }

    public int getCodigo() {
        return this.codigo;
    }

    public int getQuant() {
        return this.quantEstoque;
    }

    public float getMargemLucro() {
        return this.margemLucro;
    }

    public double getPrecoCompra() {
        return this.precoCompra;
    }

    //Adiciona unidade(s) vendidas no mês
    public void adicionaVendidosMes(int n) {
        vendidosMes += n;
    }
}
