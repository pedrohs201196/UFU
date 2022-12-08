package aula2016_05_04;


public abstract class AparelhoEletronico {
    String fabricante, sistemaCor;
    double preco;
    
    void setpreco (double preco) throws ExcecaoDadoInvalido
    {
        if (preco < 0)
            throw new ExcecaoDadoInvalido();     
        else
            this.preco = preco;
    }
}
