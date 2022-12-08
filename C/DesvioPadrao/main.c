#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main ()
{
    float medias = 0, media = 0, conj = 10, p[10], desvio, soma, variancia;
    int pos = 0, denovo=0;
    do {

    printf("\nDigite os elementos do conjunto!\n");
    	{
        	for(pos=1; pos<=conj ;pos++){

            	scanf("%f", &p[pos]);
            	medias = medias+p[pos];
            	media = medias/conj;
            	}

        	for(pos=1; pos<=conj; pos++)
        	{
            soma = soma + (p[pos]-media)*(p[pos]-media);
        	}
        	variancia = soma/conj;
	   	desvio = sqrt(variancia);
        printf("\nDesvio padrao: %f", desvio);
        printf ("\nDigite 0 para calcular outro Desvio Padrao.\nDigite qualquer outro numero para encerrar o programa.\n");
        scanf ("%d", &denovo);
	}
    } while (denovo==0);
    printf ("\nPrograma Encerrado. ");
system("pause");
}
