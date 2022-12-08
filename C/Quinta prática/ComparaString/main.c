#include <stdio.h>
#include <stdlib.h>

//comparar strings PROTOTYPE VERSION, MOTHERFUCKER
int compS (char *texto1, char *texto2);

int main()
{
    char nome1 [41], nome2 [41];
    int seraigual;
    printf ("\n---------------------------COMPARAR STRINGS---------------------------\n\n\n");
    printf("Digite uma string (max 40 digitos)\n");
    fflush (stdin);
    gets (nome1);
    printf("Digite outra string (max 40 digitos)\n");
    fflush (stdin);
    gets (nome2);

    //Usar função de contar strings
    seraigual = compS (nome1,nome2);

    if (seraigual == 0)
        printf ("\nStrings sao iguais.\n");
    else
        printf ("\nStrings sao diferentes.\n");


    return 0;
}

//comparar strings
int compS (char *texto1, char *texto2)
{
    int dif=0, i;

    for (i=0; (texto1[i] != '\0' || texto2[i] != '\0') ; i++)
    {
    if (texto1[i] != texto2[i])
        dif++;
    }

    if (dif == 0)
    return (0);
    else
    return (1);
}
