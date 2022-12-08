#include <stdio.h>
#include <stdlib.h>

//concatenar strings PROTOTYPE VERSION, MOTHERFUCKER
void concS (char *texto1, char *texto2, char *textao);

int main()
{
    char nome1 [41], nome2 [41], concatenada [81];
    printf ("\n---------------------------CONCATENAR STRINGS---------------------------\n\n\n");
    printf("Digite uma string (max 40 digitos)\n");
    fflush (stdin);
    gets (nome1);
    printf("Digite outra string (max 40 digitos)\n");
    fflush (stdin);
    gets (nome2);


    //Usar função de concatenar strings
    concS (nome1, nome2, concatenada);

    printf ("\nString 1: %s\nString 2: %s\nString concatenada: %s", nome1, nome2, concatenada);


    return 0;
}

//concatenar strings
void concS (char *texto1, char *texto2, char *textao)
{
    int i, j;

    for (i=0; texto1[i] != '\0'; i++)
    {
        textao[i] = texto1 [i];
    }

    for (j=0; texto2[j] !='\0'; i++, j++)
    {
        textao[i] = texto2 [j];
    }

    textao [i] = '\0';

}
