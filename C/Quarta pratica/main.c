#include <stdio.h>
#include <stdlib.h>

int main()
{
    float ** matriz1, **matriz2, **matrizr;
    int m, n, k, p, i, l, c, aux=0;
    printf("\nEntre com o num. de linhas da matriz 1: ");
    scanf("%d", &m);
    printf("\nEntre com o num. de colunas da matriz 1: ");
    scanf("%d", &n);
    printf("\nEntre com o num. de linhas da matriz 2: ");
    scanf("%d", &k);
    printf("\nEntre com o num. de colunas da matriz 2: ");
    scanf("%d", &p);
    system ("cls");

    if (n != k)
    printf("\nNao eh possivel multiplicar as matrizes.\n");
    else
    {
    matriz1 = (float **) malloc(sizeof(float *) *m);
    for (i=0; i<m; i++)
        matriz1[i] = (float *) malloc(sizeof(float) *n);

    printf ("\n-------------------------MATRIZ 1-------------------------\n");
    for (l=0; l<m; l++){
        for(c=0; c<n; c++){
            printf("Entre com o valor de (%d,%d): ", l+1, c+1);
            scanf("%f", &matriz1[l][c]);
            }
        }


    matriz2 = (float **) malloc(sizeof(float *) *k);
    for (i=0; i<k; i++)
        matriz2[i] = (float *) malloc(sizeof(float) *p);

    printf ("\n-------------------------MATRIZ 2-------------------------\n");
    for (l=0; l<k; l++){
        for(c=0; c<p; c++){
            printf("Entre com o valor de (%d,%d): ", l+1, c+1);
            scanf("%f", &matriz2[l][c]);
            }
        }

    //Multiplicação das matrizes

        matrizr = (float **) malloc(sizeof(float *) *m);
    for (i=0; i<m; i++)
        matrizr[i] = (float *) malloc(sizeof(float) *p);

    for (i =0; i < m; i++) {
    for (l =0; l < p; l++){
        matrizr [i] [l] = 0;
        for (c =0; c < k; c++){
            aux += (matriz1[i][c] * matriz2 [c][l]);
                }
            matrizr [i] [l] = aux;
            aux = 0;
        }
      }

    printf ("\n-------------------------MATRIZ RESULTANTE-------------------------\n");

    for (i=0; i < m; i++) {
        for (l=0; l < p; l++){
            printf ("%.2f ", matrizr [i][l]);
    }
    printf ("\n");
}
    }

return 0;
}
