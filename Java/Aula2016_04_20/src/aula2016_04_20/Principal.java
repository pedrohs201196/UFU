package aula2016_04_20;

import java.util.Scanner;

/**
 * @author Pedro Henrique da Silva 11511BSI257
 */
public class Principal {


    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        int menu = 0, submenu1, submenu2, ctForma, ctFun;
        int v1, v2, v3, v4;
        float f1, f2, f3;
        String s1, s2, s3, s4, s5, s6;
        
        
        while(menu != 3){
            System.out.println("\n---MENU PRINCIPAL---\n"
                             + "1- Formas Geometricas\n"
                             + "2- Funcionarios\n"
                             + "3- Sair");
            
            menu = sc.nextInt();
            sc.nextLine();
            
            switch(menu){
                
                //EXERCICIO DAS FORMAS GEOMETRICAS
                case 1:
                    
                    submenu1 = 0;
                    
                    Forma[] form = new Forma[10];
                    ctForma = 0;
                   
                                      
                    while(submenu1 != 9){
                        System.out.println("1- Criar Circulo\n"
                                         + "2- Criar Quadrado\n"
                                         + "3- Criar Triangulo\n"
                                         + "4- Criar Esfera\n"
                                         + "5- Criar Cubo\n"
                                         + "6- Criar Tetraedro\n"
                                         + "7- Calcular Area\n"
                                         + "8- Calcular Volume\n"
                                         + "9- Sair");
                        
                        submenu1 = sc.nextInt();
                        sc.nextLine();
                        
                        switch(submenu1){
                            
                            //1- Criar Circulo
                            case 1:
                                System.out.println("Digite o nome: ");
                                s1 = sc.nextLine();
                                System.out.println("Digite o raio: ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada X: ");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada Y: ");
                                v3 = sc.nextInt();
                                sc.nextLine();
                                
                                Circulo c = new Circulo(s1,v1,v2,v3);
                                form[ctForma] = c;
                                ctForma++;
                                
                            break;
                            
                            //2- Criar Quadrado
                            case 2:
                                
                                System.out.println("Digite o nome: ");
                                s1 = sc.nextLine();
                                System.out.println("Digite o lado: ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada X: ");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada Y: ");
                                v3 = sc.nextInt();
                                sc.nextLine();
                                
                                Quadrado q = new Quadrado(s1,v1,v2,v3);
                                form[ctForma] = q;
                                ctForma++;
                            break;
                            
                            //3 - Criar Triangulo
                            case 3:
                                System.out.println("Digite o nome: ");
                                s1 = sc.nextLine();
                                System.out.println("Digite o lado: ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada X: ");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada Y: ");
                                v3 = sc.nextInt();
                                sc.nextLine();
                                
                                Triangulo t = new Triangulo(s1,v1,v2,v3);
                                form[ctForma] = t;
                                ctForma++;
                            break;
                            
                            //4- Criar Esfera
                            case 4:
                                System.out.println("Digite o nome: ");
                                s1 = sc.nextLine();
                                System.out.println("Digite o raio: ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada X: ");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada Y: ");
                                v3 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada Z: ");
                                v4 = sc.nextInt();
                                sc.nextLine();
                                
                                Esfera e = new Esfera(s1,v1,v2,v3,v4);
                                form[ctForma] = e;
                                ctForma++;
                                
                            break;
                            
                            //5- Criar Cubo
                            case 5:
                                System.out.println("Digite o nome: ");
                                s1 = sc.nextLine();
                                System.out.println("Digite o lado: ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada X: ");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada Y: ");
                                v3 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada Z: ");
                                v4 = sc.nextInt();
                                sc.nextLine();
                                
                                Cubo cu = new Cubo(s1,v1,v2,v3,v4);
                                form[ctForma] = cu;
                                ctForma++;
                            break;    
                            
                            //6- Criar Tetraedro
                            case 6:
                                System.out.println("Digite o nome: ");
                                s1 = sc.nextLine();
                                System.out.println("Digite o lado: ");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada X: ");
                                v2 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada Y: ");
                                v3 = sc.nextInt();
                                sc.nextLine();
                                System.out.println("Digite a coordenada Z: ");
                                v4 = sc.nextInt();
                                sc.nextLine();
                                
                                Tetraedro te = new Tetraedro(s1,v1,v2,v3,v4);
                                form[ctForma] = te;
                                ctForma++;
                            break;
                            
                            //7- Calcular Area
                            case 7:
                                System.out.println("Digite o numero da forma (0 a 10):");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                
                                System.out.println("Area: "+form[v1].obterArea()+"");
                            break;
                            
                            //8- Calcular Volume
                            case 8:
                                System.out.println("Digite o numero da forma (0 a 10):");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                
                                System.out.println("Area: "+form[v1].obterVolume()+"");
                            break;
                            
                        }
                    }
                break;
                
                //FUNCIONARIOS
                case 2:
                    
                    
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
    
}
