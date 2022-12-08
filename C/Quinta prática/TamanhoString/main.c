#include <stdio.h>
#include <stdlib.h>

//contar strings PROTOTYPE VERSION, MOTHERFUCKER
int tS (char *texto);

int main()
{
    char nome [40];
    int quantostem;
    printf ("\n---------------------------COMPRIMENTO STRINGS---------------------------\n\n\n");
    printf("Digite uma string (max 40 digitos)\n");
    fflush (stdin);
    gets (nome);

    //Usar função de contar strings
    quantostem = tS (nome);

    printf ("\nA string tem %d caracteres.", quantostem);


    return 0;
}

//contar strings
int tS (char *texto)
{
    int cont=0, i;

    for (i=0; texto[i] != '\0'; i++)
    {
        cont++;
    }
    return (cont);
}
