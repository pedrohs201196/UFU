//Nessa classe realizamos as compras do cliente

package projetofinal;

import java.util.ArrayList;

public class Caixa {

    private ArrayList<ProdutoComprado> carrinho = new ArrayList(); //Lista de produtos a comprar
    private double dinheiroCaixa; //Dinheiro acumulado no caixa

    //Adiciona produto ao carrinho de compras
    public String passaProduto(Produto p, int quant) {
        ProdutoComprado pc = new ProdutoComprado(p);

        for (ProdutoComprado i : carrinho) {
            if (i.getCodigo() == pc.getCodigo()) {
                i.acrescentarUnidades(quant);
                return "Adicionado(s) " + quant + " unidade(s) de " + pc.getNome() + " no carrinho\n"
                        + "Valor gasto: " + pc.valorVenda() * (double) quant + "";
            }
        }

        pc.acrescentarUnidades(quant);
        carrinho.add(pc);

        return "Adicionado(s) " + quant + " unidade(s) de " + pc.getNome() + " no carrinho\n"
                + "Valor gasto: " + pc.valorVenda() * (double) pc.unidadesCompradas + "";

    }

    //Retira produto do carrinho de compras
    public String retiraProduto(String nome, int quant) {
        for (ProdutoComprado i : carrinho) {
            if (i.getNome().equals(nome)) {
                if (i.getUnidadesCompradas() < quant) {
                    return "\nQuantidade indisponivel no carrinho.";
                }

                i.decrementarUnidades(quant);

                if (i.getUnidadesCompradas() == 0) {
                    carrinho.remove(i);
                }

                return "\nRemovida(s) " + quant + " unidade(s) de " + i.getNome() + " do carrinho.";
            }
        }
        return "\nProduto nao encontrado no carrinho.";
    }

    //Retorna subtotal da compra
    public double getValorCompra() {
        double retorno = 0;

        for (ProdutoComprado i : carrinho) {
            retorno += i.valorVenda() * i.getUnidadesCompradas();
        }
        return retorno;
    }

    //Imprime dados de todos os produtos do carrinho.
    public String imprimeCarrinho() {

        String retorno = "";

        for (ProdutoComprado i : carrinho) {
            retorno += i.toString();
            retorno += "\n";
        }

        retorno += "\nTotal: " + getValorCompra() + "";
        return retorno;
    }

    //Adiciona o dinheiro recebido na compra (dinheiro dado pelo cliente menos troco) ao caixa
    public String finalizaCompra(double dinheiroCliente) {

        double valorCompra = 0;

        int i = 1;

        String cupomFiscal = "";

        cupomFiscal += "============================ CUPOM FISCAL ============================\n";
        cupomFiscal += "----------------------------------------------------------------------\n";
        for (ProdutoComprado p : carrinho) {
            valorCompra += p.valorVenda() * p.getUnidadesCompradas(); //Adiciona valor do produto (equivalente à quantidade comprada) ao valor total da compra
            cupomFiscal += "" + i + " - " + p.getCodigo() + " - " + p.getNome() + "\n" + p.getUnidadesCompradas() + " x " + p.valorVenda() + " - " + p.valorVenda() * p.getUnidadesCompradas() + "\n";
            i++;
        }

        cupomFiscal += "Total R$ " + valorCompra + "\n";
        cupomFiscal += "Dinheiro R$ " + dinheiroCliente + "\n";
        if (dinheiroCliente > valorCompra) {
            cupomFiscal += "Troco R$ " + (dinheiroCliente - valorCompra) + "\n";
        } else {
            cupomFiscal += "Troco R$ 0,00\n";
        }
        cupomFiscal += "----------------------------------------------------------------------\n";

        dinheiroCaixa += getValorCompra(); //Adicionar dinheiro da compra ao caixa
        carrinho = new ArrayList(); //Esvazia carrinho

        return cupomFiscal;
    }

    //Fecha o caixa, retorna a quantidade de dinheiro que ele contém para enviá-lo ao setor administrativo
    public double fechaCaixa() {
        double retorno = dinheiroCaixa;
        dinheiroCaixa = 0;
        return retorno;
    }
}
