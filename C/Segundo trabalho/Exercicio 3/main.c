#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    char frase [51];
    int chave=0, i=0, tam=0, N,i;


    for (i=0; i < N; i++){
    fflush(stdin);
    gets(frase);
    tam = strlen(frase);


    scanf ("%d", &chave);

    while (chave > 25)
    {
        chave = chave%26;
    }


    for (i=0; i < tam; i++)
    {
        //minusculas
        if ((frase [i] > 96) && (frase [i] < 123))
        {
        frase [i] -= chave;
        while (frase [i] < 97)
            {
            frase [i] = frase [i] +26;
            }
        }
        //maiusculas
        if ((frase [i] > 64) && (frase [i] < 91))
        {
        frase [i] -= chave;
        while (frase [i] < 65)
            {
            frase [i] = frase [i] +26;
            }
        }
    }


    printf ("%s\n", frase);
    }
}
    return 0;
}
