#include <stdio.h>
#include <stdlib.h>

struct turma{
char matricula [12];
char nome [90];
char disci [7];
float nota [2];
};

int main()
{
    int quant, i;
    float mediafinal=0;


    printf("\n\n------------------------EXERCICIO 5------------------------\n\n\n");


    printf ("\nDigite a quantidade de alunos da sala (maximo 10): ");
    scanf ("%d", &quant);
        while ((quant > 10) || (quant < 1)) {
            printf ("\nDigite um numero valido: ");
            scanf ("%d", &quant); }

    struct turma tur[10];
    for (i=0; i < quant; i++)
    {
        fflush(stdin);
        printf ("\n------------------------ALUNO %d------------------------\n", (i+1));
        printf ("\nDigite o nome do aluno: ");
        gets(tur[i].nome);
        printf ("\nDigite o numero da matricula do aluno: ");
        gets(tur[i].matricula);
        printf ("\nDigite o Codigo da Disciplina: ");
        gets(tur[i].disci);
        printf ("\nDigite a primeira nota (peso 1): ");
        scanf ("%f", &tur[i].nota[0]);
        printf ("\nDigite a segunda nota (peso 2): ");
        scanf ("%f", &tur[i].nota[1]);
    }


    for (i=0; i < quant; i++)
    {
        mediafinal = (tur[i].nota[0] + tur[i].nota[1] + tur[i].nota[1])/3;
        printf ("\n%s\nMedia Final: %.2f", tur[i].nome, mediafinal);
    }



    return 0;
}
