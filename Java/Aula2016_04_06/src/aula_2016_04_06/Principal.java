package aula_2016_04_06;

import java.util.Scanner;

/**
 * @author Pedro Henrique da Silva 11511BSI257
 */
public class Principal {


    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        int menu = 0, submenu1, submenu2;
        int v1, v2, v3;
        float f1, f2, f3;
        String s1, s2, s3, s4, s5, s6;
        
        
        while(menu != 3){
            System.out.println("\n---MENU PRINCIPAL---\n"
                             + "1- Loja Comercial\n"
                             + "2- Locadora\n"
                             + "3- Sair");
            
            menu = sc.nextInt();
            sc.nextLine();
            
            switch(menu){
                
                //EXERCICIO DA LOJA COMERCIAL
                case 1:
                    
                    submenu1 = 0;
                    
                    Loja loja = new Loja();
                   
                                      
                    while(submenu1 != 10){
                        System.out.println("1- Adicionar vendedor\n"
                                         + "2- Adicionar administrativo\n"
                                         + "3- Mostrar todos os funcionarios\n"
                                         + "4- Alterar salario base de vendedor\n"
                                         + "5- Alterar salario base de administrativo\n"
                                         + "6- Adicionar vendas para um vendedor\n"
                                         + "7- Adicionar hora extra para um administrativo\n"
                                         + "8- Receber salario de vendedor\n"
                                         + "9- Receber salario de administrativo\n"
                                         + "10- Sair");
                        
                        submenu1 = sc.nextInt();
                        sc.nextLine();
                        
                        switch(submenu1){
                            
                            //Adicionar vendedor
                            case 1:
                                System.out.println("Digite o nome: ");
                                s1 = sc.nextLine();
                                System.out.println("Digite o RG: ");
                                s2 = sc.nextLine();
                                System.out.println("Digite o salario base: ");
                                f1 = sc.nextFloat();
                                sc.nextLine();
                                
                                loja.registraVendedor(s1, s2, f1);
                                
                            break;
                            
                            //Adicionar administrativo
                            case 2:
                                System.out.println("Digite o nome: ");
                                s1 = sc.nextLine();
                                System.out.println("Digite o RG: ");
                                s2 = sc.nextLine();
                                System.out.println("Digite o salario base: ");
                                f1 = sc.nextFloat();
                                sc.nextLine();
                                
                                loja.registraAdministrativo(s1, s2, f1);
                                
                            break;
                            
                            //Mostrar todos os funcionarios
                            case 3:
                               
                                loja.showFuncionarios();
                                
                            break;
                            
                            //Alterar salario base de vendedor
                            case 4:
                                System.out.println("Digite o numero do vendedor que você deseja alterar o salario base: (primeiro funcionario = 1): ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite o novo salario base: ");
                                f1 = sc.nextFloat();
                                sc.nextLine();
                                System.out.println(""+loja.alteraSalarioBaseV(v1, f1)+"");
                                
                            break;
                            
                            //Alterar salario base de administrativo
                            case 5:
                                System.out.println("Digite o numero do administrativo que você deseja alterar o salario base: (primeiro funcionario = 1): ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite o novo salario base: ");
                                f1 = sc.nextFloat();
                                sc.nextLine();
                                System.out.println(""+loja.alteraSalarioBaseA(v1, f1)+"");
                                
                            break;    
                            
                            //Adicionar vendas para um vendedor
                            case 6:
                                System.out.println("Digite o numero do vendedor que você deseja adicionar vendas: (primeiro funcionario = 1): ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite o quanto ele fez com vendas: ");
                                f1 = sc.nextFloat();
                                sc.nextLine();
                                
                                System.out.println(""+loja.addVendasV(v1, f1)+"");
                            break;
                            
                            //Adicionar hora extra para um administrativo
                            case 7:
                                System.out.println("Digite o numero do administrativo que você deseja adicionar horas:  (primeiro funcionario = 1): ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite quantas horas extras ele fez: ");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                
                                System.out.println(""+loja.addVendasV(v1, v2)+"");
                            break;
                            
                            //Receber salario de vendedor
                            case 8:
                                System.out.println("Digite o numero do vendedor que ira receber o salario (primeiro funcionario = 1):");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                
                                System.out.println(""+loja.vendedorRecebe(v1)+"");
                            break;
                            
                            //Receber salario de administrativo
                            case 9:
                                System.out.println("Digite o numero do administrativo que ira receber o salario (primeiro funcionario = 1):");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                
                                System.out.println(""+loja.administrativoRecebe(v1)+"");
                            break;
                            
                        }
                    }
                break;
                
                //LOCADORA
                case 2:
                    
                    
                    submenu2 = 0;
                    Locadora locadora = new Locadora();
                    
                    while(submenu2 != 5){
                        System.out.println("1- Cadastrar CD\n"
                                         + "2- Cadastrar DVD\n"
                                         + "3- Cadastrar VHS\n"
                                         + "4- Mostrar catalogo\n"
                                         + "5- Sair");
                        
                        submenu2 = sc.nextInt();
                        sc.nextLine();
                        
                        switch(submenu2){
                            //cadastrar CD
                            case 1:
                                System.out.println("Digite o nome do CD:");
                                s1 = sc.nextLine();
                                System.out.println("Digite o tipo: ");
                                s2 = sc.nextLine();
                                System.out.println("Digite o genero:");
                                s3 = sc.nextLine();
                                System.out.println("Digite o ano:");
                                s4 = sc.nextLine();
                                System.out.println("Digite o numero de copias:");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite o preco:");
                                f1 = sc.nextFloat();
                                sc.nextLine();
                                System.out.println("Digite o nome do cantor:");
                                s5 = sc.nextLine();
                                System.out.println("Digite o numero de faixas:");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                
                                locadora.registraAudio(s1, s2, s3, s4, v1, f1, s5, v2);
                                break;
                                
                            //cadastrar DVD
                            case 2:
                                System.out.println("Digite o nome do DVD:");
                                s1 = sc.nextLine();
                                System.out.println("Digite o tipo: ");
                                s2 = sc.nextLine();
                                System.out.println("Digite o genero:");
                                s3 = sc.nextLine();
                                System.out.println("Digite o ano:");
                                s4 = sc.nextLine();
                                System.out.println("Digite o numero de copias:");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite o preco:");
                                f1 = sc.nextFloat();
                                sc.nextLine();
                                System.out.println("Digite o nome do diretor:");
                                s5 = sc.nextLine();
                                System.out.println("Digite a classificacao:");
                                s6 = sc.nextLine();
                                System.out.println("Digite a duracao:");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                
                                locadora.registraVideo(s1, s2, s3, s4, v1, f1, s5, s6, v2);
                                break;
                
                     
                            //cadastrar VHS
                            case 3:
                                System.out.println("Digite o nome do VHS:");
                                s1 = sc.nextLine();
                                System.out.println("Digite o tipo: ");
                                s2 = sc.nextLine();
                                System.out.println("Digite o genero:");
                                s3 = sc.nextLine();
                                System.out.println("Digite o ano:");
                                s4 = sc.nextLine();
                                System.out.println("Digite o numero de copias:");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite o preco:");
                                f1 = sc.nextFloat();
                                sc.nextLine();
                                System.out.println("Digite o nome do diretor:");
                                s5 = sc.nextLine();
                                System.out.println("Digite a classificacao:");
                                s6 = sc.nextLine();
                                System.out.println("Digite a duracao:");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("A fita esta rebobinada? (0 = nao, 1 = sim)");
                                v3 = sc.nextInt();
                                sc.nextLine();
                                
                                locadora.registraVHS(s1, s2, s3, s4, v1, f1, s5, s6, v2, v3);
                                break;
                                
                            //mostrar catalogo
                            case 4:
                                locadora.showCatalogo();
                                break;
                            
                        }
                    }
                     
             }

        }
    }
    
}
