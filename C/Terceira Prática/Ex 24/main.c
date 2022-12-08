#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct age {
    char nome [80];
    char email [26];
    char rua [60], bairro [20], cidade [20], estado [20], pais [20];
    char ddd [4], telefone [10];
    char obs [200];
    char numend [6];
    int dianiver, mesniver, anoniver;
};

int main()
{
    int quant, i, j, menu, gotcha [100], checarencontrou =0, buscarmes, buscardia, remover;
    char buscarnome [70];

    for (i=0; i < 100; i++)
    {
        gotcha [i] = 0;
    }


    printf ("\n----------------------------------EXERCICIO 24----------------------------------\n\n");
    printf ("\nDigite o numero de pessoas que voce deseja ter na sua agenda. (max 100): ");
    scanf ("%d", &quant);
        //Numero invalido
        while ((quant < 1) || (quant > 100))
        {
            printf ("\nDigite um numero valido: ");
            scanf ("%d", &quant);
        }

    struct age agenda [100];
    system("CLS");
    //Inserir informações na agenda
    for (i=0; i < quant; i++)
    {
        fflush(stdin);
        printf ("\n\n--------------Contato %d--------------\n", (i+1));
        printf ("\nInsira o nome do contato: ");
        gets(agenda[i].nome);
        printf ("\nInsira o e-mail do contato: ");
        gets (agenda[i].email);
        printf ("\nInsira a rua do contato: ");
        gets (agenda[i].rua);
        printf ("\nInsira o numero da casa do contato: ");
        gets (agenda[i].numend);
        printf ("\nInsira o bairro do contato: ");
        gets (agenda[i].bairro);
        printf ("\nInsira a cidade do contato: ");
        gets (agenda[i].cidade);
        printf ("\nInsira o estado do contato: ");
        gets (agenda[i].estado);
        printf ("\nInsira o pais do contato: ");
        gets (agenda[i].pais);
        printf ("\nInsira o DDD do contato: ");
        gets (agenda[i].ddd);
        printf ("\nInsira o telefone do contato: ");
        gets (agenda[i].telefone);
        printf ("\nInsira o dia do aniversario do contato: ");
        scanf ("%d", &agenda[i].dianiver);
        printf ("\nInsira o mes (em numeral) do aniversario do contato: ");
        scanf ("%d", &agenda[i].mesniver);
        printf ("\nInsira o ano de nascimento do contato: ");
        scanf ("%d", &agenda[i].anoniver);
        printf ("\nDigite uma observacao sobre o contato:\n");
        fflush(stdin);
        gets (agenda[i].obs);
    }

    voltamenu:
    checarencontrou = 0;
    system("CLS");

    //Menu de opções
    printf ("\nO que deseja fazer com as informacoes?\n\n");
    printf ("\n---------------------------------------------\n");
    printf ("1-Buscar pessoas pelo primeiro nome\n");
    printf ("2-Buscar pessoas por mes de aniversario\n");
    printf ("3-Buscar pessoas por mes e dia de aniversario\n");
    printf ("4-Inserir pessoa por ordem alfabetica de nome\n");
    printf ("5-Retirar pessoa da agenda\n");
    printf ("6-Imprimir nome, telefone e e-mail de todos os contatos\n");
    printf ("7-Imprimir todos os dados de todos os contatos\n");
    printf ("---------------------------------------------\n\n");

    printf ("Digite a opcao desejada: ");
    scanf ("%d", &menu);
        //Caso opção seja inválida...
        while ((menu !=1) && (menu !=2) && (menu !=3) && (menu !=4) && (menu !=5) && (menu !=6) && (menu !=7))
        {
            printf ("\nDigite uma opcao valida: ");
            scanf ("%d", &menu);
        }
    //Executar opção desejada
    switch (menu)
    {
    case 1: //BUSCAR PESSOAS PELO NOME
    system("CLS");

    printf ("\n----Buscar pessoas pelo primeiro nome----\n\n");

    //Inserir o nome da pessoa
    printf ("Digite o primeiro nome da pessoa que voce pretende visualizar os dados:\n");
    scanf ("%s", buscarnome);

    //Checar quais pessoas tem o nome procurado
    char primeironome [40];

    for (i=0; i < quant; i++)
    {
        for (j=0; agenda[i].nome[j] != ' '; j++ )
        {
            primeironome[j] = agenda[i].nome[j];
        }
        primeironome[j] = '\0';
    if (strcmp (primeironome,buscarnome) ==0)
    {
        printf ("\n\nContato: %s", agenda[i].nome);
        printf ("\nTelefone: %s %s", agenda[i].ddd, agenda [i].telefone);
        printf ("\nE-mail: %s", agenda[i].email);
        printf ("\nAniversario: %d/%d/%d", agenda[i].dianiver, agenda[i].mesniver, agenda[i].anoniver);
        printf ("\nRua: %s, %s\nBairro: %s", agenda[i].rua, agenda[i].numend, agenda[i].bairro);
        printf ("\n%s, %s, %s", agenda[i].cidade, agenda[i].estado, agenda[i].pais);
        printf ("\nObservacao: %s", agenda[i].obs);
        printf ("\n--------------------------------------------------------\n");
        checarencontrou++;
    }


    }

    if (checarencontrou == 0) printf ("\nNenhum resultado encontrado... ME DESCULPE!\n\n");
    system ("pause");



    break;

    case 2: //BUSCAR PESSOAS PELO MES DE ANIVERSARIO
    system("CLS");
    printf ("\n----Buscar pessoas pelo mes de aniversario----\n\n\n");
    printf ("\nDigite o numero do mes que voce deseja ver os aniversariantes: ");
    scanf ("%d", &buscarmes);

    for (i=0; i < quant; i++)
    {
        if (buscarmes == agenda[i].mesniver)
        {
        printf ("\n\nContato: %s", agenda[i].nome);
        printf ("\nTelefone: %s %s", agenda[i].ddd, agenda [i].telefone);
        printf ("\nE-mail: %s", agenda[i].email);
        printf ("\nAniversario: %d/%d/%d", agenda[i].dianiver, agenda[i].mesniver, agenda[i].anoniver);
        printf ("\nRua: %s, %s\nBairro: %s", agenda[i].rua, agenda[i].numend, agenda[i].bairro);
        printf ("\n%s, %s, %s", agenda[i].cidade, agenda[i].estado, agenda[i].pais);
        printf ("\nObservacao: %s", agenda[i].obs);
        printf ("\n--------------------------------------------------------\n");
        checarencontrou++;
        }
    }

    if (checarencontrou == 0) printf ("\nNenhum resultado encontrado... ME DESCULPE!\n\n");
    system ("pause");

    break;

    case 3: //BUSCAR PESSOAS MES E DIA DE ANIVERSARIO
    system("CLS");
    printf ("\n----Buscar pessoas pelo mes e dia de aniversario----\n");
    printf ("\nDigite o dia: ");
    scanf ("%d", &buscardia);
    printf ("\nDigite o numero do mes: ");
    scanf ("%d", &buscarmes);

    for (i=0; i < quant; i++)
    {
        if ((buscarmes == agenda[i].mesniver) && (buscardia == agenda[i].dianiver) )
        {
        printf ("\n\nContato: %s", agenda[i].nome);
        printf ("\nTelefone: %s %s", agenda[i].ddd, agenda [i].telefone);
        printf ("\nE-mail: %s", agenda[i].email);
        printf ("\nAniversario: %d/%d/%d", agenda[i].dianiver, agenda[i].mesniver, agenda[i].anoniver);
        printf ("\nRua: %s, %s\nBairro: %s", agenda[i].rua, agenda[i].numend, agenda[i].bairro);
        printf ("\n%s, %s, %s", agenda[i].cidade, agenda[i].estado, agenda[i].pais);
        printf ("\nObservacao: %s", agenda[i].obs);
        printf ("\n--------------------------------------------------------\n");
        checarencontrou++;
        }
    }

    if (checarencontrou == 0) printf ("\nNenhum resultado encontrado... ME DESCULPE!\n\n");
    system ("pause");
    break;

    case 4: //INSERIR PESSOA
    system("CLS");
    printf ("\n----Inserir pessoa por ordem alfabetica de nome----\n");

    //checar se é possível adicionar alguem
    if (quant == 100)
        printf ("\nNao eh possivel adicionar alguem a lista porque ela esta cheia.\n\n");
    else
    {
        printf ("\n\nDigite as informacoes do seu novo contato.:\n\n");
        fflush(stdin);
        printf ("\n\n--------------Novo contato--------------\n", (i+1));
        printf ("\nInsira o nome do contato: ");
        gets(agenda[quant].nome);
        printf ("\nInsira o e-mail do contato: ");
        gets (agenda[quant].email);
        printf ("\nInsira a rua do contato: ");
        gets (agenda[quant].rua);
        printf ("\nInsira o numero da casa do contato: ");
        gets (agenda[quant].numend);
        printf ("\nInsira o bairro do contato: ");
        gets (agenda[quant].bairro);
        printf ("\nInsira a cidade do contato: ");
        gets (agenda[quant].cidade);
        printf ("\nInsira o estado do contato: ");
        gets (agenda[quant].estado);
        printf ("\nInsira o pais do contato: ");
        gets (agenda[quant].pais);
        printf ("\nInsira o DDD do contato: ");
        gets (agenda[quant].ddd);
        printf ("\nInsira o telefone do contato: ");
        gets (agenda[quant].telefone);
        printf ("\nInsira o dia do aniversario do contato: ");
        scanf ("%d", &agenda[quant].dianiver);
        printf ("\nInsira o mes (em numeral) do aniversario do contato: ");
        scanf ("%d", &agenda[quant].mesniver);
        printf ("\nInsira o ano de nascimento do contato: ");
        scanf ("%d", &agenda[quant].anoniver);
        printf ("\nDigite uma observacao sobre o contato:\n");
        fflush(stdin);
        gets (agenda[quant].obs);
        quant++;
        printf ("\n\nContato adicionado.\n\n");
    }
    system ("pause");
    break;

    case 5: //RETIRAR PESSOA DA AGENDA
    system("CLS");
    printf ("\n----Retirar pessoa da agenda----\n");

    //Checar se é possível remover alguém
    if (quant < 2)
        printf ("\nNao eh possivel remover alguem da lista pois ha apenas uma pessoa nela.\n\n");
    else
        {
    for (i=0; i < quant; i++)
    {
        printf ("\n%d - %s", (i+1), agenda[i].nome);
    }
    printf ("\nDigite o numero da pessoa que voce deseja REMOVER PARA TODO O SEMPRE: ");
    scanf ("%d", &remover);
        while ((remover < 1) && (remover > quant))
        {
            printf ("\nDigite um numero valido: ");
            scanf ("%d", &remover);
        }


    remover = remover - 1;

    for (i=remover; i < quant; i++)
    {
        strcpy (agenda[i].nome, agenda[i+1].nome);
        strcpy (agenda[i].email, agenda[i+1].email);
        strcpy (agenda[i].rua, agenda[i+1].rua);
        strcpy (agenda[i].bairro, agenda[i+1].bairro);
        strcpy (agenda[i].cidade, agenda[i+1].cidade);
        strcpy (agenda[i].estado, agenda[i+1].estado);
        strcpy (agenda[i].pais, agenda[i+1].pais);
        strcpy (agenda[i].ddd, agenda[i+1].ddd);
        strcpy (agenda[i].telefone, agenda[i+1].telefone);
        strcpy (agenda[i].obs, agenda[i+1].obs);
        strcpy (agenda[i].numend, agenda[i+1].numend);
        (agenda[i].dianiver) = (agenda[i+1].dianiver);
        (agenda[i].mesniver) = (agenda[i+1].mesniver);
        (agenda[i].anoniver) = (agenda[i+1].anoniver);
    }

    printf ("\n\nContato removido\n\n");
    quant--;
        }
    system ("pause");
    break;

    case 6: //IMPRIMIR NOME, TELEFONE E E-MAIL DOS CONTATOS
    system("CLS");
    printf ("\n----Imprimir nome, telefone e e-mail de todos os contatos----\n");

    //Imprimir informações solicitadas
    printf ("\n--------------------------------------------------------\n");
    for (i=0; i < quant; i++)
    {
        printf ("\n\nContato: %s", agenda[i].nome);
        printf ("\nTelefone: %s %s", agenda[i].ddd, agenda [i].telefone);
        printf ("\nE-mail: %s", agenda[i].email);
        printf ("\n--------------------------------------------------------\n");

    }
    system ("pause");

    break;

    case 7: //IMPRIMIR TODOS OS DADOS DE TODOS OS CONTATOS
    system("CLS");
    printf ("\n----Imprimir todos os dados de todos os contatos----\n");
    //Imprimir informações solicitadas

    printf ("\n--------------------------------------------------------\n");
    for (i=0; i < quant; i++)
    {
        printf ("\n\nContato: %s", agenda[i].nome);
        printf ("\nTelefone: %s %s", agenda[i].ddd, agenda [i].telefone);
        printf ("\nE-mail: %s", agenda[i].email);
        printf ("\nAniversario: %d/%d/%d", agenda[i].dianiver, agenda[i].mesniver, agenda[i].anoniver);
        printf ("\nRua: %s, %s\nBairro: %s", agenda[i].rua, agenda[i].numend, agenda[i].bairro);
        printf ("\n%s, %s, %s", agenda[i].cidade, agenda[i].estado, agenda[i].pais);
        printf ("\nObservacao: %s", agenda[i].obs);
        printf ("\n--------------------------------------------------------\n");

    }
    system ("pause");
    }

    goto voltamenu;
    return 0;
}
