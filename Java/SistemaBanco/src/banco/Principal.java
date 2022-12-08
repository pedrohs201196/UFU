/**
 *
 * @author Pedro H. - 11511BSI257
 */

package banco;

import java.util.Scanner;

public class Principal {
    
    int q, j;
    static int ctContas = 0, ctClientes = 0, age1, age2, aux;
    static Cliente v[] = new Cliente[500];
    
    static Cliente buscaCliente(String u, String s) {
        for (int i=0;i<ctContas;i++)
            if (v[i].usuario.equals(u) && v[i].senha.equals(s))
                return v[i];
        return null;
    }
    
    static Conta buscaConta(int n) {
        for (int i=0;i<ctContas;i++)
            if (v[i].conta[0].numero == n)
                return v[i].conta[0];
        return null;
    }
    
    public static void main(String a[]) {        
        Scanner sc = new Scanner(System.in);
        int opcao = -1;
        
        while (opcao != 10) {
        
            System.out.println("=== BANCO ===");
            System.out.println("1) Cadastrar cliente");
            System.out.println("2) Saldo");
            System.out.println("3) Sacar");
            System.out.println("4) Depositar");
            System.out.println("5) Transferir");
            System.out.println("6) Relatorio");
            System.out.println("7) Clientes negativados");
            System.out.println("8) Relatorio de clientes que possuem idade dentro de um intervalo");
            System.out.println("9) Adicionar conta para cliente já cadastrado");
            System.out.println("10) Sair");
            opcao = sc.nextInt();
            sc.nextLine();
            switch (opcao) {
                case 1:
                    System.out.print("Nome: ");
                    String n = sc.nextLine();
                    System.out.print("CPF: ");
                    String c = sc.nextLine();
                    System.out.print("Idade: ");
                    int i = sc.nextInt();
                    sc.nextLine();
                    System.out.print("Telefone: ");
                    String t = sc.nextLine();
                    System.out.print("Usuario: ");
                    String u = sc.nextLine();
                    System.out.print("Senha: ");
                    String s = sc.nextLine();
                    System.out.print("Valor inicial: ");
                    float v1 = sc.nextFloat();
                    sc.nextLine();
                    System.out.print("Tipo da Conta: ");
                    String tp = sc.nextLine();
                    Conta c1 = new Conta();
                    c1.cadastraConta((ctContas+1),v1,tp);                    
                    Cliente cli1 = new Cliente();
                    cli1.cadastraCliente(n,c,t,i,c1,u,s);
                    v[ctClientes] = cli1;
                    ctContas++;
                    ctClientes++;
                    break;
                case 2:
                    System.out.print("Usuario: ");
                    u = sc.nextLine();
                    System.out.print("Senha: ");
                    s = sc.nextLine();
                    Cliente cli = buscaCliente(u, s);
                    
                    if (cli != null){
                            System.out.println("O Cliente possue "+cli.qtd+" conta(s).");
                            
                            for (int j=0; j < cli.qtd; j++)
                            {
                                System.out.println("Conta "+(j+1)+"");
                                cli.conta[j].saldo();
                            }
                    }
                    
                    else
                        System.out.println("Cliente nao encontrado!");
                    break;
                case 3:    
                    System.out.print("Usuario: ");
                    u = sc.nextLine();
                    System.out.print("Senha: ");
                    s = sc.nextLine();
                    cli = buscaCliente(u, s);
                    if (cli != null) {
                        System.out.print("Valor: ");
                        float vl = sc.nextFloat();
                        sc.nextLine();
                        cli.conta[0].sacar(vl);
                    }else
                        System.out.println("Cliente nao encontrado!");
                    break;
                case 4:
                    System.out.print("Usuario: ");
                    u = sc.nextLine();
                    System.out.print("Senha: ");
                    s = sc.nextLine();
                    cli = buscaCliente(u, s);
                    if (cli != null) {
                        System.out.print("Valor: ");
                        float vl = sc.nextFloat();
                        sc.nextLine();
                        cli.conta[0].depositar(vl);
                    }else
                        System.out.println("Cliente nao encontrado!");
                    break;
                case 5:
                    System.out.print("Usuario: ");
                    u = sc.nextLine();
                    System.out.print("Senha: ");
                    s = sc.nextLine();
                    cli = buscaCliente(u, s);
                    if (cli != null) {
                        System.out.print("Valor: ");
                        float vl = sc.nextFloat();
                        sc.nextLine();
                        System.out.print("Numero da conta destino: ");
                        int ct = sc.nextInt();
                        sc.nextLine();
                        Conta cont = buscaConta(ct);
                        if (cont != null) {
                            cli.conta[0].transfere(vl,cont);
                        }else
                            System.out.println("Conta destino nao encontrada!");
                    }else
                        System.out.println("Cliente nao encontrado!");
                    break;
                case 6:
                    for (int ii=0;ii<ctClientes;ii++)
                    {
                        System.out.println(""+v[ii].nome+"");
                        for (int j=0; j < v[ii].qtd; j++)
                            {
                                System.out.println("Nº da conta:"+v[ii].conta[j].numero+"");
                                v[ii].conta[j].saldo();
                            }
                        System.out.println("\n");
                    }
                    break;
                case 7:
                    for (int ii=0;ii<ctClientes;ii++)
                    {
                        for (int j=0; j < v[ii].qtd; j++)
                        {
                            if (v[ii].conta[j].saldo < 0)
                            System.out.println(v[ii].conta[j].numero+" - "+v[ii].nome+" - "+v[ii].conta[0].saldo);
                        }
                    }
                    break;
                case 8:
                    System.out.println("Digite as duas idades: ");
                    age1 = sc.nextInt();
                    age2 = sc.nextInt();
                    
                    if (age2 > age1)
                    {
                        aux = age2;
                        age2 = age1;
                        age1 = aux;
                    }
                    
                    for (int ii=0;ii<ctClientes;ii++)
                    {
                        //if ((v[ii].checaIdade(age1,age2)) == true){
                        if ((v[ii].idade >= age1) && (v[ii].idade <= age2)){
                            System.out.println(""+v[ii].nome+"");
                           
                            for (int j=0; j < v[ii].qtd; j++) {
                                    System.out.println("Nº da conta:"+v[ii].conta[j].numero+"");
                                    v[ii].conta[j].saldo();
                                }
                            
                            System.out.println("\n");
                        }
                    }
                    break;
                case 9:
                    System.out.print("Usuario: ");
                    u = sc.nextLine();
                    System.out.print("Senha: ");
                    s = sc.nextLine();
                    cli = buscaCliente(u, s);
                    if (cli != null) {
                        System.out.print("Valor inicial: ");
                        float v2 = sc.nextFloat();
                        sc.nextLine();
                        System.out.print("Tipo da Conta: ");
                        String tp2 = sc.nextLine();
                        Conta c2 = new Conta();
                        c2.cadastraConta((ctContas+1),v2,tp2);    
                        ctContas++;
                        cli.novaConta(c2);
                    }else
                        System.out.println("Cliente nao encontrado!");
                    
            }
            
        
        }
        
        
    }
    
}
