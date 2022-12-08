package Aula20160330;


import java.util.Scanner;

/**
 *
 * @author Pedro Henrique da Silva 11511BSI257
 */
public class Principal {


    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        int menu=0, submenu1=0, submenu2=0;
        int v1, v2, v3;
        String s;
        
        
        while(menu != 3){
            System.out.println("\n---MENU PRINCIPAL---\n"
                             + "1- Tempo\n"
                             + "2- Nave Espacial\n"
                             + "3- Sair");
            
            menu = sc.nextInt();
            sc.nextLine();
            
            switch(menu){
                
                //EXERCICIO DO TEMPO
                case 1:
                    
                    submenu1 = 0;
                    
                    System.out.println("Digite as horas, os minutos e os segundos:");
                    v1 = sc.nextInt();
                    sc.nextLine();
                    v2 = sc.nextInt();
                    sc.nextLine();
                    v3 = sc.nextInt();
                    sc.nextLine();
                    
                    Tempo t = new Tempo(v1,v2,v3);
                    
                    
                    while(submenu1 != 10){
                        System.out.println("1- Mostrar o tempo Ver. 1\n"
                                         + "2- Mostrar o tempo Ver. 2\n"
                                         + "3- Incrementar minuto\n"
                                         + "4- Decrementar minuto\n"
                                         + "5- Incrementar hora\n"
                                         + "6- Decrementar hora\n"
                                         + "7- Zerar segundos\n"
                                         + "8- Setar pra Meio Dia\n"
                                         + "9- Setar pra Meia Noite\n"
                                         + "10- Sair");
                        
                        submenu1 = sc.nextInt();
                        sc.nextLine();
                        
                        switch(submenu1){
                            
                            //mostrar tempo ver. 1
                            case 1:
                                System.out.println(""+t.mostraTempo1()+"");
                            break;
                            
                            //mostrar tempo ver. 2
                            case 2:
                                System.out.println(""+t.mostraTempo2()+"");
                            break;
                            
                            //incrementa minuto
                            case 3:
                                t.incrementaMinuto();
                                System.out.println("Novo horario: "+t.mostraTempo1()+"");
                            break;
                            
                            //decrementa minuto
                            case 4:
                                t.decrementaMinuto();
                                System.out.println("Novo horario: "+t.mostraTempo1()+"");
                            break;
                            
                            //incrementa hora
                            case 5:
                                t.incrementaHora();
                                System.out.println("Novo horario: "+t.mostraTempo1()+"");
                            break;    
                            
                            //decrementa hora
                            case 6:
                                t.decrementaHora();
                                System.out.println("Novo horario: "+t.mostraTempo1()+"");
                            break;
                            
                            //zerar segundos
                            case 7:
                                t.zeraSegundos();
                                System.out.println("Novo horario: "+t.mostraTempo1()+"");
                            break;
                            
                            //meio dia
                            case 8:
                                t.meioDia();
                                System.out.println("Novo horario: "+t.mostraTempo1()+"");
                            break;
                            
                            //meia noite
                            case 9:
                                t.meiaNoite();
                                System.out.println("Novo horario: "+t.mostraTempo1()+"");
                            break;
                        }
                    }
                break;
                
                //NAVE ESPACIAL
                case 2:
                    
                    submenu2 = 0;
                    TestaNaveEspacial portoEspacial = new TestaNaveEspacial();
                    
                    while(submenu2 != 6){
                        System.out.println("1- Criar nave\n"
                                         + "2- Mostrar nave\n"
                                         + "3- Ver qual nave eh mais rapida\n"
                                         + "4- Quantidade de Naves\n"
                                         + "5- Mostrar todas as naves\n"
                                         + "6- Sair");
                        
                        submenu2 = sc.nextInt();
                        sc.nextLine();
                        
                        switch(submenu2){
                            //criar nave
                            case 1:
                                System.out.println("Digite o nome da nave: ");
                                s = sc.nextLine();
                                portoEspacial.criaNave(s);
                                break;
                                
                            //mostrar nave
                            case 2:
                                System.out.println("Digite o numero da nave que deseja mostrar(primeira nave = 1 e assim por diante):");
                                
                                v1 = sc.nextInt();
                                sc.nextLine();
                                System.out.println(""+portoEspacial.showNave(v1)+"");
                                break;
                            
                            //ver qual nave é mais rápida
                            case 3:
                                System.out.println("Digite o numero das naves que deseja comparar:(primeira nave = 1 e assim por diante)");
                                v1 = sc.nextInt();
                                sc.nextLine();
                                v2 = sc.nextInt();
                                sc.nextLine();
                                System.out.println(""+portoEspacial.maisRapida(v1, v2)+"");
                                break;
                                
                            //quantidade de naves
                            case 4:
                                System.out.println(""+portoEspacial.quant()+" nave(s)");
                                break;
                            
                            //mostrar todas as naves
                            case 5:
                                portoEspacial.mostrarTodas();
                                break;
                        }
                    }
                            
             }

        }
    }
    
}
