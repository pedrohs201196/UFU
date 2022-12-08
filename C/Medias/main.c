#include <stdio.h>
#include <stdlib.h>

int main(){
    /*int quantlida, n, soma, vlr;
    float media;
    quantlida = soma = 0;

    printf ("Quantos valores contem sua amostra?: ");
    scanf ("%d", &n);

    if (n>0) {
    while (quantlida < n)
    {
        printf ("\n Entre com a amostra numero %d = ", quantlida+1);
        scanf ("%d", &vlr);
        soma = soma +vlr;
        quantlida++;
    }
    media = (float)soma/n;
    printf("A media dos %d elementos eh igual a %.2f", n, media);
    }
    else {printf ("Digite um numero valido.");};
        */

    int nota1, nota2, nota3, denovo, reprov, exame, aprov, contalunos;
    float mediafinal, mediaturma;
    reprov = 0;
    exame = 0;
    aprov = 0;
    mediafinal = 0;
    mediaturma = 0;
    denovo = 0;
    contalunos = 0;
    printf ("\nInsira 3 valores inteiros de 0 ate 100.");
    do {
        mediafinal = 0;
        printf ("\nDigite a primeira nota: ");
        scanf ("%d", &nota1);
        while ((nota1 < 0) || (nota1 > 100))
            {
              printf("\nDigite um numero valido: ");
              scanf ("%d", &nota1);
            }

        printf ("\nDigite a segubda nota: ");
        scanf ("%d", &nota2);
        while ((nota2 < 0) || (nota2 > 100))
            {
              printf("\nDigite um numero valido: ");
              scanf ("%d", &nota2);
            }

        printf ("\nDigite a terceira nota: ");
        scanf ("%d", &nota3);
        while ((nota3 < 0) || (nota3 > 100))
            {
              printf("\nDigite um numero valido: ");
              scanf ("%d", &nota3);
            }
        mediafinal = (nota1 + nota2 + nota3)/3;
        mediaturma = mediaturma + mediafinal;
        contalunos++;
        printf ("\nMedia: %.2f.", mediafinal);

        if ((mediafinal >=0) && (mediafinal <30)) { printf (" Aluno reprovado.\n"); reprov++;};
        if ((mediafinal >=30) && (mediafinal <60)) { printf (" Aluno de exame.\n"); exame++;};
        if (mediafinal >=60) { printf (" Aluno aprovado.\n"); aprov++;};

        printf ("\nDigite 0 para calcular a media de outro aluno e 1 para finalizar o processo: ");
        scanf ("%d", &denovo);
        while ((denovo != 1) && (denovo != 0))
        {
            printf ("\nDigite um numero valido!\n");
            scanf ("%d", &denovo);
        }

    } while (denovo == 0);

    printf ("\n%d alunos foram reprovados, %d alunos ficaram de exame e %d alunos foram aprovados.", reprov, exame, aprov);
    mediaturma = mediaturma/contalunos;
    printf ("\nA media final da turma eh: %.2f.", mediaturma);



    return 0;
}
