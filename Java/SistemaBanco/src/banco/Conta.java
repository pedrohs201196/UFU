/**
 *
 * @author Pedro H. - 11511BSI257
 */

package banco;

public class Conta {
    
    int numero;
    float saldo;
    String tipo;
    
    void cadastraConta(int numero1,float saldo1,String tipo1) {
        numero = numero1;
        if (saldo1 >= 100)
            saldo = saldo1;
        else
            saldo = 100;
        tipo = tipo1;
    }
    
    boolean sacar(float valor) {
        if (valor <= (saldo+100)) {
            saldo -= valor;
            return true;
        }else {
            System.out.println("Saldo insuficiente!");
            return false;
        }
    }
    
    void depositar(float valor) {
        saldo += valor;
    }
    
    void saldo() {
        System.out.println("Tipo: "+tipo+"\nSaldo: "+saldo+" reais.");
    }
    
    boolean transfere(float valor, Conta c) {
        if (sacar(valor)) {
            c.depositar(valor);
            return true;
        }else {
            System.out.println("Transferencia cancelada!");
            return false;
        }        
    }
    
    boolean ehNegativo() {
        return (saldo < 0);
    }
    
        
    
}
