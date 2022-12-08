#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

//FATORIAL (EXERCICIO 1)
int fat (int x)
{
    if (x==0)
        return 1;
    else
    {
        return (x * fat (x-1));
    }
}

//SOMA VETORES (EXERCICIO 06)
int somavet (int *n, int tamanho)
{
    if (tamanho==0)
        return 0;
    else
        return n[tamanho-1] + (somavet (n,tamanho-1));
}

//HIPER FATORIAL (EXERCICIO 21)

int hiperfat (int n)
{
    if (n==0)
        return 1;
    else
    {
        return (pow (n,n)) * hiperfat (n-1);
    }
}

//MULTIPLICACAO RUSSA (EXERCICIO 31)

int rasputin (int a, int b)
{
    if (a==1)
        return b;
    else
    {
        if ((a%2) == 1)
            return b + rasputin ((a/2), (b*2));
        else
            return rasputin ((a/2), (b*2));
    }
}

//PALAVRA PALINDROMA SEM PONTUAÇÃO E ESPAÇO (EXERCICIO 37)

int palindroma (char *string, int inicio, int fim)
{
    if (string[inicio] != string[fim])
        return 0;
    else if (inicio >= fim)
    {
        return 1;
    }
    else palindroma (string, inicio+1, fim-1);
}


int main()
{
    int menu;
    //ENUNCIADO 1:
    int num;
    //ENUNCIADO 2:
    int *vet, tamvet, i;
    //ENUNCIADO 3:
    int hipernum;
    //ENUNCIADO 4:
    int russo1, russo2;
    //ENUNCIADO 5:
    int check;
    char *string;

    voltacomeco:
    printf ("----------------------------------RECURSAO----------------------------------\n\n");
    printf ("1-Fatorial de um numero.\n2-Somar elementos de um vetor.\n3-Hiperfatorial.\n4-Multiplicacao a russa.\n5-Palavra palindroma.\n");
    printf("\nDigite o numero do exercicio que voce quer avaliar: ");
    scanf ("%d", &menu);
    system ("cls");

    switch (menu)
    {
        //ENUNCIADO 1
        case 1:
            printf ("---------------------------------1-FATORIAL----------------------------------\n\n");

            printf ("\nDigite um numero: ");
            scanf ("%d", &num);
            printf("\nO fatorial de %d eh %d.\n\n", num, fat (num));
            system ("pause");
            break;
        //ENUNCIADO 2
        case 2:
            printf ("-------------------------2-SOMAR ELEMENTOS DE UM VETOR-------------------------\n\n");

            printf ("\nDigite o numero de elementos do vetor: ");
            scanf ("%d", &tamvet);
            vet = (int *) malloc (tamvet*sizeof(int));

            for (i=0; i < tamvet; i++)
            {
                printf ("\nDigite o valor do elemento %d: ", i+1);
                scanf ("%d", &vet[i]);
            }
            printf ("\n\nSoma dos elementos dos vetores: %d\n\n", somavet(vet, tamvet));
            system ("pause");
            break;
        //ENUNCIADO 3
        case 3:
            printf ("-----------------------------3-HIPERFATORIAL-----------------------------\n\n");

            printf ("\nDigite um numero n positivo: ");
            scanf ("%d", &hipernum);
                while (hipernum < 0)
                {
                    printf ("\nDigite um numero valido: ");
                    scanf ("%d", &hipernum);
                }
            printf ("\nO hiperfatorial de %d eh: %d\n\n", hipernum, hiperfat(hipernum));
            system ("pause");
            break;
        //ENUNCIADO 4
        case 4:
            printf ("---------------------------4-MULTIPLICACAO A RUSSA--------------------------\n\n");

            printf ("\nDigite um numero: ");
            scanf ("%d", &russo1);
            printf ("\nDigite outro numero: ");
            scanf ("%d", &russo2);
            printf ("\nMultiplicacao a russa de %d e %d: %d\n\n", russo1, russo2, rasputin (russo1,russo2));
            system ("pause");
            break;
        case 5:
            printf ("---------------------------5-STRING PALINDROMA--------------------------\n\n");

            printf ("\nDigite uma string para ver se ela eh palindroma: ");
            fflush(stdin);
            gets (string);

            check = palindroma(string,0,strlen(string)-1);

            if (check==1)
                printf ("\nA string eh palindroma.\n\n");
            else
                printf ("\nA string nao eh palindroma.\n\n");

            system ("pause");
            break;

        default: printf ("\nNumero invalido.\n"); system ("pause");
    }
    system ("cls");
    goto voltacomeco;

    return 0;
}
