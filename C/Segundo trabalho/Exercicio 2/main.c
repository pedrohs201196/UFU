#include <stdio.h>
#include <stdlib.h>

int main()
{
    int m, n, p, q, i, j, k;
    float matriz1 [12] [12], matriz2 [12] [12], matrizr [12] [12], aux=0;

    printf ("--------------------------MULTIPLICACAO DE MATRIZES--------------------------");
//Numero de Linhas e colunas das matrizes
    printf ("\n\nDigite o num. de linhas 'm' (1 a 12) da Matriz 1: ");
    scanf ("%d", &m);
    while (m < 1 || m > 12) {
        printf ("\n\aDigite um num. valido: ");
        scanf ("%d", &m);   }

    printf ("\nDigite o num. de colunas 'n' (1 a 12) da Matriz 1: ");
    scanf ("%d", &n);
    while (n < 1 || n > 12) {
        printf ("\n\aDigite um num. valido: ");
        scanf ("%d", &n);   }

    printf ("\nDigite o num. de linhas 'p' (1 a 12) da Matriz 2: ");
    scanf ("%d", &p);
    while (p < 1 || p > 12) {
        printf ("\n\aDigite um num. valido: ");
        scanf ("%d", &p);   }

    printf ("\nDigite o num. de colunas 'q' (1 a 12) da Matriz 2: ");
    scanf ("%d", &q);
    while (q < 1 || q > 12) {
        printf ("\n\aDigite um num. valido: ");
        scanf ("%d", &q);   }

//Checar se é possível multiplicar as matrizes

if (n != p)
    {
        printf ("\n-----------------\aNao eh possivel multiplicar as matrizes-----------------\n\n\n\n\n\n\n\n\n\n\n\n");
    }
else
{
    //Entrada de valores da primeira matriz.
    printf ("\n\n----------------------------------\n\nDigite os valores da primeira matriz.\n");
    for (i =0; i < m; i++) {
        for (j =0; j < n; j++){
            printf ("\nDigite o valor de (%d,%d): ", i+1, j+1);
            scanf ("%f", &matriz1[i][j]);
                              }
                           }

    //Entrada de valores da segunda matriz.
    printf ("\n\n----------------------------------\n\nDigite os valores da segunda matriz.\n");
    for (i =0; i < p; i++) {
        for (j =0; j < q; j++){
            printf ("\nDigite o valor de (%d,%d): ", i+1, j+1);
            scanf ("%f", &matriz2[i][j]);
                              }
                           }

    //As duas matrizes:

        printf ("\n\n----------------------------------\n\nMatriz 1:\n");

    for (i=0; i < m; i++) {
        for (j=0; j < n; j++){
            printf ("%.2f ", matriz1 [i][j]);
    }
    printf ("\n");
}

    printf ("\n\n----------------------------------\n\nMatriz 2:\n");

    for (i=0; i < p
    ; i++) {
        for (j=0; j < q; j++){
            printf ("%.2f ", matriz2 [i][j]);
    }
    printf ("\n");
}

    //Calcular  multiplicação das matrizes
    for (i =0; i < m; i++) {
        for (j =0; j < q; j++){
            matrizr [i] [j] = 0;
            for (k =0; k < p; k++){
                aux += (matriz1[i][k] * matriz2 [k][j]);

            }
            matrizr [i] [j] = aux;
            aux = 0;
        }
    }

    //Imprimir Matriz Resultante



    printf ("\n\n----------------------------------\n\nMatriz Resultante:\n");

    for (i=0; i < m; i++) {
        for (j=0; j < q; j++){
            printf ("%.2f ", matrizr [i][j]);
    }
    printf ("\n");
}





}
return 0;
}
