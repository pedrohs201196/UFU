#include <stdio.h>
#include <stdlib.h>

int main()
{
    int menu, primo, diamante, num1, num2=0, cont, numero, espacos, asteriscos, count, linha;

    do {
        printf("\n\nDigite 1 para calcular numeros primos.\nDigite 2 para gerar diamantes de asteriscos.\nDigite 3 para finalizar o programa.\n");
        scanf ("%d", &menu);
        switch (menu) {
            case 1:
                printf ("\nDigite ate que numero voce quer ver os numeros primos existentes entre ele e zero.\n");
                scanf ("%d", &primo);
                while (primo < 0) {
                    printf ("\nDigite um numero valido");
                    scanf ("%d", &primo);
                }
                for (num1=1;num1<=primo;num1++){
                                for(num2=1, cont=0;num2<=num1;num2++){
                                    if(num1%num2==0){
                                        cont++;
                                    }
                                }
                                if (cont == 2){
                                    printf("%d, ", num1);
                                }

                            } break;

            case 2:
                printf ("\nDigite um numero impar para estipular o tamanho do diamante de asteriscos.\n");
                scanf ("%d", &diamante);
                while ((diamante%2 == 0) || (diamante < 0)) {
                    printf ("\nDigite um numero impar: ");
                    scanf ("%d", &diamante);
                }
                 //Imprimindo a parte de cima do diamante
            asteriscos = 1;
            espacos = (diamante-1)/2;
            for(linha = 1 ; espacos > 0 ; linha++)
            {
                //Espaços
                for(count = 1 ; count <= espacos ; count++)
                    printf(" ");

                //Asteriscos
                for(count = 1 ; count <= asteriscos ; count++)
                    printf("*");

                espacos--;
                asteriscos += 2;
                printf("\n");
            }

            //Imprimindo a parte de baixo do diamante
            for(linha=1 ; asteriscos > 0 ; linha++)
            {

                //Espaços
                for(count = 1 ; count <= espacos ; count++)
                    printf(" ");

                //Asteriscos
                for(count = 1 ; count <= asteriscos ; count++)
                    printf("*");

                espacos++;
                asteriscos -= 2;
                printf("\n");
            } break;



            case 3: printf ("\nPrograma encerrado ^-^\n"); break;

            default: printf ("\nOpcao invalida\n");


    }


} while(menu!=3);

return 0;
}

