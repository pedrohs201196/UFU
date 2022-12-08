//Classe que guarda a informação de um produto colocado no carrinho de compras no Caixa

package projetofinal;

public class ProdutoComprado extends Produto {

    int unidadesCompradas;

    //Construtor
    public ProdutoComprado(Produto p) {
        super(p.getNome(), p.getQuant(), p.getCodigo(), p.getPrecoCompra(), p.getMargemLucro());
    }

    //Get de unidades compradas
    public int getUnidadesCompradas() {
        return unidadesCompradas;
    }

    //Set de unidades compradas
    public void setUnidadesCompradas(int unidadesCompradas) {
        this.unidadesCompradas = unidadesCompradas;
    }

    //Acrescentar n unidades compradas
    public void acrescentarUnidades(int n) {
        this.unidadesCompradas += n;
    }

    //Decrementar n unidades compradas
    public void decrementarUnidades(int n) {
        this.unidadesCompradas -= n;
    }

    //Retorna informações do produto comprado
    @Override
    public String toString() {
        return "" + getCodigo() + ": " + getNome() + " - " + unidadesCompradas + " unidade(s) comprada(s)\n"
                + "Valor Unitario: " + valorVenda() + "/Valor Total: " + valorVenda() * unidadesCompradas + "";

    }

}
