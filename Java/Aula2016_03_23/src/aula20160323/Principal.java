package aula20160323;

/**
 *
 * @author Pedro Henrique da Silva 11511BSI257
 */

import java.util.Scanner;

public class Principal {


    public static void main(String[] args) {
        
        Scanner scan = new Scanner(System.in);
        int menu, i, num;
        float v1, v2, d;
        float r1, r2;
        String nome, cpf;
        
        
        System.out.println ("1- Distancia Euclidiana\n"
                       +"2- Quadrilatero\n"
                       +"3- Cadastrar pessoa fisica\n"
                       +"\n\nSelecione a opção: ");
    
    menu = scan.nextInt();
    scan.nextLine();
    
    switch(menu)
        {
            //1- DISTANCIA EUCLIDIANA
            case 1: 
                
                System.out.println ("Digite o valor de X1:");
                v1 = scan.nextFloat();
                System.out.println ("Digite o valor de Y1:");
                v2 = scan.nextFloat();
                
                //inicializar p1
                Ponto p1 = new Ponto();
                p1.setPonto(v1, v2);
                               
                System.out.println ("Digite o valor de X2:");
                v1 = scan.nextFloat();
                System.out.println ("Digite o valor de Y2:");
                v2 = scan.nextFloat();
                
                //inicializar p2
                Ponto p2 = new Ponto();
                p2.setPonto(v1, v2);
                
                //calcular distancia
                d = p1.distancia(p2);
                
                System.out.println (""+p1.showPonto()+"");
                System.out.println (""+p2.showPonto()+"");
                
                System.out.println("Distancia entre os pontos "+d+"");
                
                break;
                
            //2- QUADRILATERO
            case 2: 
                
                Quadrilatero q = new Quadrilatero();
                
                //Definir pontos do quadrilatero
                System.out.println ("Digite as coordenadas do ponto A:");
                v1 = scan.nextFloat();
                v2 = scan.nextFloat();
                
                q.setA (v1,v2);
                
                System.out.println ("Digite as coordenadas do ponto B:");
                v1 = scan.nextFloat();
                v2 = scan.nextFloat();
                
                q.setB (v1,v2);
                
                System.out.println ("Digite as coordenadas do ponto C:");
                v1 = scan.nextFloat();
                v2 = scan.nextFloat();
                
                q.setC (v1,v2);
                
                System.out.println ("Digite as coordenadas do ponto D:");
                v1 = scan.nextFloat();
                v2 = scan.nextFloat();
                
                q.setD (v1,v2);
                
                //checar se é quadrilatero
                
                if (q.naoQuadrilatero()){
                    System.out.println("Nao eh um quadrilatero");
                    System.exit(1);
                }
                
                //Perimetro
                System.out.println("Perimetro do quadrilatero:"+q.perimetro()+"");
                
                //Verificar se eh quadrado
                if (q.ehQuadrado()){
                    System.out.println("Eh quadrado");
                }
                else
                    System.out.println("Nao eh quadrado");
                
                //retornar vertices
                    System.out.println("Vertices: "+q.retornaVertices()+"");
                
                break;
               
            //3- PESSOA FÍSICA
            case 3: 
                
                //pegar informações pelo usuario
                System.out.println("Digite o nome: ");
                nome = scan.nextLine();
                System.out.println("Digite a idade: ");
                num = scan.nextInt();
                scan.nextLine();
                System.out.println("Digite o CPF: ");
                cpf = scan.nextLine();
                
                PessoaFisica pe = new PessoaFisica();
                
                pe.setPessoa(nome, num, cpf);
                
                //validar o CPF
                if (pe.validaCPF())
                    System.out.println("CPF Valido");
                else
                    System.out.println("CPF Invalido");
        }
    
    }
    
}
