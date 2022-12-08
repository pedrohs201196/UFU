#include <stdio.h>
#include <stdlib.h>

//copiar strings PROTOTYPE VERSION, MOTHERFUCKER
void cS (char *texto, char *copiatexto);

int main()
{
    char nome [41], copiarcoiso [41];
    printf ("\n---------------------------COPIAR STRINGS---------------------------\n\n\n");
    printf("Digite uma string (max 40 digitos)\n");
    fflush (stdin);
    gets (nome);

    //Usar função de copiar strings
    cS (nome, copiarcoiso);

    printf ("\nString inicial: %s\nString copiada: %s\n", nome, copiarcoiso);


    return 0;
}

//copiar strings
void cS (char *texto, char *copiatexto)
{
    int i;

    for (i=0; texto[i] != '\0'; i++)
    {
        copiatexto[i] = texto [i];
    }
    copiatexto[i] = '\0';
}
