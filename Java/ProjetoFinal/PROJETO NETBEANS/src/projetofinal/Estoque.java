//Nessa classe guardamos e fazemos a gestão dos produtos cadastrados

package projetofinal;

import java.io.Serializable;
import java.util.ArrayList;

public class Estoque {

    private int codProduto = 1000; //Código dos produtos (incrementa a cada novo produto)
    private ArrayList<Produto> estoque = new ArrayList(); //Lista de produtos em estoque
    public GestaoDados gestaoDados = new GestaoDados(); //Gestão de dados do estoque

    //Adiciona (cadastra) produto no estoque
    public String adicionaProduto(Produto p) {
        estoque.add(p);
        codProduto++;

        return "\nProduto " + p.getNome() + " registrado com o codigo " + p.getCodigo() + ".";
    }

    //Remove produto do estoque
    public String removeProduto(int cod) {
        Produto removido = null;
        for (Produto p : estoque) {
            if (p.getCodigo() == cod) {
                removido = p;
            }
        }

        if (removido == null) {
            return "\nProduto nao encontrado!";
        }

        estoque.remove(removido);
        return "\n" + removido.getNome() + " foi removido do estoque.";
    }

    //Recebe código de produto e acrescenta quantidade dele no estoque 
    public String incrementaProduto(int cod, int quant) {

        for (Produto p : estoque) {
            if (p.getCodigo() == cod) {
                p.adicionaQuantidade(quant);
                return "\nForam acrescentadas " + quant + " unidades de " + p.getNome() + " ao estoque.";
            }
        }
        return "\nProduto nao encontrado!";
    }
    
    //Recebe código de produto e muda a margem de lucro dele
    public String alteraMargemLucro(int cod, float margemNova) {

        for (Produto p : estoque) {
            if (p.getCodigo() == cod) {
                p.setMargemLucro(margemNova);
                return "\nNova margem de lucro de " + p.getNome() + ": "+margemNova+"";
            }
        }
        return "\nProduto nao encontrado!";
    }

    //Recebe código de produto e decrementa quantidade dele do estoque
    public void decrementaProduto(int cod, int quant) {

        for (Produto p : estoque) {
            if (p.getCodigo() == cod) {
                p.subtraiQuantidade(quant);
                return;
            }
        }
    }

    //Procura produto por código e o retorna
    public Produto identificaProduto(String nome) {

        for (Produto p : estoque) {
            if (p.getNome().equals(nome)) {
                return p;
            }
        }

        throw new NullPointerException("\nProduto nao encontrado!");
    }

    //Retorna string com todos os produtos
    public String imprimirEstoque() {

        String lista = "";

        for (Produto p : estoque) {
            lista += "\n" + p.toString() + "";
        }

        if ("".equals(lista)) {
            return "Estoque vazio\n";
        } else {
            return lista;
        }
    }

    //Get do código do produto
    public int getCodProduto() {
        return codProduto;
    }

    //Set do código do produto
    private void setCodProduto(int codProduto) {
        this.codProduto = codProduto;
    }

    //Set do ArrayList do estoque
    public void setEstoque(ArrayList<Produto> estoque) {
        this.estoque = estoque;
    }

    //Lê dados dos produtos em arquivo binário
    public void lerDados() {
        setEstoque(gestaoDados.lerDados("./dados/Estoque.txt"));

        if (estoque.size() > 0) { //atualizar o codigo de produto se já houver um banco de dados
            setCodProduto(codProduto + estoque.size());
        }
    }

    //Salva dados dos produtos em arquivo binário
    public void salvarDados() {
        gestaoDados.salvarDados(estoque, "./dados/Estoque.txt");
    }
}
