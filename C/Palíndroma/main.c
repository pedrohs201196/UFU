#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i, j, teste;
    char palavra1 [20], palavra2 [20];

    menu:
    printf ("\n\nDigite uma palavra para checar se ela eh palindroma!\n");
    scanf ("%s", palavra1);
    j = 0;
    for (i=strlen(palavra1)-1; i >= 0; i--)
    {
        palavra2 [j] = palavra1 [i];
        j++;
    }
    palavra2 [j] = '\0';


    printf ("%s VS %s", palavra1,palavra2);

    if (strcmp(palavra1, palavra2) == 0)
        printf ("\nEh palindroma");
    else printf ("\nNao eh palindroma");
    goto menu;
    return 0;
}
