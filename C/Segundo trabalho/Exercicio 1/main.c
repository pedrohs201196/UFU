#include <stdio.h>
#include <stdlib.h>

int main()
{
    int matriz [10] [10], lc, i, j, diferente =0;

    printf ("---------------------------MATRIZ SIMETRICA---------------------------\n");

    printf ("\nDigite o num. de linhas e colunas da matriz (de 1 a 10): ");
    scanf ("%d", &lc);

    while ((lc < 1) || (lc > 10)) {
        printf ("\nDigite um numero valido.: ");
        scanf ("%d", &lc);
    }

    for (i =0; i < lc; i++) {
        for (j =0; j < lc; j++){
            printf ("\nDigite o valor de (%d,%d): ", i+1, j+1);
            scanf ("%d", &matriz[i][j]);
                              }
                           }

    for (i =0; i < lc; i++) {
        for (j =0; j < lc; j++) {
            if (matriz [i][j] != matriz [j][i]) {
                diferente++;}
                    }
    }
    if (diferente > 0) printf ("\nNao eh simetrica");
    else printf ("\nEh simetrica");

    return 0;
}
