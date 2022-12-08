package Controle;

import aula2016_05_25.Contato;
import aula2016_05_25.GestaoContatos;

public class AddContatoControle {

    public boolean addContato(Contato c) {
        boolean result = false;

        if (c != null && c.nome.length() > 0 && c.idade > 0 && c.profissao.length() > 0 && c.telefone.length() > 0 && c.email.length() > 0) {
            result = true;
        }

        GestaoContatos.getInstance().adicionaContato(c);

        return result;
    }

    public boolean removeContato(String nome) {
        boolean result;
        
        result = GestaoContatos.getInstance().eliminaContato(nome);
        
        return result;
    }
    

}
