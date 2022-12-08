package aula2016_05_04;

import java.util.Scanner;


public class Principal {


    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        int menu = 0, submenu1, submenu2;
        int v1, v2, v3, v4;
        float f1, f2, f3;
        String s1, s2, s3, s4, s5, s6;
        boolean estacorreto = false;
        
        
        while(menu != 3){
            System.out.println("\n---MENU PRINCIPAL---\n"
                             + "1- Aparelhos Eletrônicos\n"
                             + "2- Array\n"
                             + "3- Sair");
            
            menu = sc.nextInt();
            sc.nextLine();
            
            switch(menu){
                
                //APARELHOS ELETRONICOS
                case 1:
                    
                    estacorreto = false;
                    AparelhoEletronico apa = new DVD();
                    
                    while (!estacorreto){

       
                    System.out.println("Digite o preco:");
                    try{
                        f1 = sc.nextFloat();
                        estacorreto = true;
                    }
                    catch (ExcecaoDadoInvalido e){
                        System.out.println(e.getMessage());
                    }
                }
                break;
                
                //FUNCIONARIOS
                /*case 2:
                    
                    
                    submenu2 = 0;
                    Funcionario[] fun = new Funcionario[10];
                    ctFun = 0;
                    
                    while(submenu2 != 4){
                        System.out.println("1- Cadastrar Funcionario Comissionado\n"
                                         + "2- Cadastrar Funcionario Noturno\n"
                                         + "3- Receber Salario\n"
                                         + "4- Sair");
                        
                        submenu2 = sc.nextInt();
                        sc.nextLine();
                        
                        switch(submenu2){
                            //1- Cadastrar Funcionario Comissionado
                            case 1:
                                System.out.println("Digite o nome: ");
                                s1 = sc.nextLine();
                                System.out.println("Digite o CPF: ");
                                s2 = sc.nextLine();
                                System.out.println("Digite o sexo: ");
                                s3 = sc.nextLine();
                                System.out.println("Digite a idade: ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite o salario base: ");
                                f1 = sc.nextFloat();
                                sc.nextLine();
                                System.out.println("Digite a comissao: ");
                                f2 = sc.nextFloat();
                                sc.nextLine();
                                
                                FuncionarioComissionado func = new FuncionarioComissionado(s1,s2,s3,v1,f1,f2);
                                fun[ctFun] = func;
                                ctFun++;
                                break;
                                
                            //2- Cadastrar Funcionario Noturno
                            case 2:
                                System.out.println("Digite o nome: ");
                                s1 = sc.nextLine();
                                System.out.println("Digite o CPF: ");
                                s2 = sc.nextLine();
                                System.out.println("Digite o sexo: ");
                                s3 = sc.nextLine();
                                System.out.println("Digite a idade: ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite o salario base: ");
                                f1 = sc.nextFloat();
                                sc.nextLine();
                                System.out.println("Digite o valor de trabalho: ");
                                f2 = sc.nextFloat();
                                sc.nextLine();
                                System.out.println("Digite o numero de noites trabalhadas: ");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                
                                FuncionarioNoturno funn = new  FuncionarioNoturno(s1,s2,s3,v1,f1,f2,v2);
                                fun[ctFun] = funn;
                                ctFun++;
                                break;
                
                     
                            //3- Receber Salario
                            case 3:
                                System.out.println("Digite o numero do funcionario (0 a 10):");
                                v1 = sc.nextInt();
                                sc.nextLine();
             
                                System.out.println("Salario: "+fun[v1].recebeSalario()+"");
                                break;
                        }
                    }
                     
             }

        }
    }
    */
            }
        }
    }
}  