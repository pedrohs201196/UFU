/**
 *
 * @author Pedro H. - 11511BSI257
 */

package banco;

public class Cliente {
    
    String nome, CPF, telefone;
    int idade, qtd = 0;
    Conta conta[] = new Conta [50];
    String usuario,senha;
    
    void cadastraCliente(String nome1,String CPF1,String telefone1,int idade1,
                         Conta conta1,String usuario1,String senha1) {
        nome = nome1;
        CPF = CPF1;
        telefone = telefone1;
        idade = idade1;
        conta[qtd] = conta1;
        qtd++;
        usuario = usuario1;
        senha = senha1;
    }
    
    void novaConta(Conta conta1)
    {
        conta[qtd] = conta1;
        qtd++;
    }
    
    boolean checaIdade(int age1, int age2)
    {
        int aux;
        if (age2 > age1)
        {
            aux = age2;
            age2 = age1;
            age1 = aux;
        }
        
        return (idade >= age1) && (idade <= age2);
                 
    }
    
    
    
    
}
