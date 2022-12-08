package projetofinal;

import java.util.Scanner;

public class Principal {

    public static void main(String[] args) {

        //Scanner
        Scanner sc = new Scanner(System.in);

        //Variáveis genéricas utilizadas em Scanners
        String s1 = "", s2 = "", s3 = "", s4 = ""; //Strings
        int op; //Switches e menus em geral
        double d1 = 0; //Double
        int v1, v2; //Inteiros
        float f1; //Float

        Produto prod = null; //Produto genérico utilizado nos menus do(a) estoquista e do(a) operador(a) de caixa

        //Classes utilizadas
        ControleFuncionarios controleFuncionarios = new ControleFuncionarios(); //Controle de funcionários
        Administrativo admin = new Administrativo(0, 0, 0, 0, 10000); //Setor administrativo
        GestaoDados gestaoDados = new GestaoDados(); //Gestão de dados do supermercado
        Estoque estoque = new Estoque(); //Estoque
        Caixa caixa = new Caixa(); //Caixa

        //Login do funcionário
        String login = null, senha = null;

        //Ler os dados dos arquivos binários
        try {
            controleFuncionarios.lerDados(); //ler dados de funcionarios
            estoque.lerDados(); //ler dados do estoque
            gestaoDados.lerDadosAdm("./dados/Administrativo.txt"); //ler dados do setor administrativo

        } catch (NullPointerException e) {
            System.out.println("Erro ao ler um ou mais arquivos");
        }

        //Criação de funcionários iniciais, caso não haja nenhum registrado
        if (controleFuncionarios.numeroFuncionarios() == 0) {
            System.out.println("Criando funcionarios iniciais...\n");
            controleFuncionarios.criarFuncionariosIniciais();
        }
        
        System.out.println("============ SUPERMERCADO ============");

        while (!"sair".equals(login)) {

            System.out.println("\n============ MENU PRINCIPAL ============");

            //Login do funcionário
            System.out.println("\n(digite 'sair' para sair do programa)");

            System.out.print("\nLogin: ");
            login = sc.nextLine();

            if ("sair".equals(login)) {
                break;
            }

            System.out.print("Senha: ");
            senha = sc.nextLine();

            //'f' recebe o funcionário que fez login
            Funcionario f = null;

            try {
                f = controleFuncionarios.verificaLogin(login, senha);
            } catch (NullPointerException npe) {
                System.out.println(npe.getMessage());
            }

            //Caso 'f' seja da classe Gerente, acessa menu do gerente
            if (f instanceof Gerente) {

                int menuGerente = 0;

                while (menuGerente != 9) {
                    System.out.println("\n============ MENU DO GERENTE ============");
                    System.out.println("\nMes " + admin.getMes()); //Mês atual
                    System.out.println("\n1- Contratar funcionario\n"
                            + "2- Demitir funcionario\n"
                            + "3- Listar funcionarios\n"
                            + "4- Relatorio do mes\n" //Imprime relatório com o fluxo de dinheiro do início do mês até o dado momento
                            + "5- Fechar mes\n" //Conclui todas as transações de dinheiro do mês, próximas transações constam em novo relatório
                            + "6- Relatorio de meses anteriores\n"
                            + "7- Consultar vendas de determinado mes\n"
                            + "8- Mudar margem de lucro de produto\n"
                            + "9- Logout\n");

                    try {
                        menuGerente = sc.nextInt();
                        sc.nextLine();
                    } catch (Exception e) {
                        System.out.println("\nEntrada invalida!");
                        sc.nextLine();
                    }

                    switch (menuGerente) {
                        case 1: //Contratar funcionário
                            op = 0;

                            System.out.println("\n1- Estoquista\n2- Operador(a) de caixa\n");

                            try {
                                op = sc.nextInt();
                                sc.nextLine();
                            } catch (Exception e) {
                                System.out.println("\nEntrada invalida!");
                                sc.nextLine();
                            }

                            if (op == 1 || op == 2) {
                                System.out.print("\nNome: ");
                                s1 = sc.nextLine();
                                System.out.print("CPF: ");
                                s2 = sc.nextLine();
                                System.out.print("Salario: ");
                                d1 = sc.nextDouble();
                                sc.nextLine();
                                System.out.print("Login: ");
                                s3 = sc.nextLine();
                                System.out.print("Senha: ");
                                s4 = sc.nextLine();
                            } else {
                                System.out.println("\nOpcao invalida!");
                            }

                            if (op == 1) { //Contratar estoquista
                                Estoquista est = new Estoquista(s1, s2, d1, s3, s4); //Cria novo estoquista
                                controleFuncionarios.contrataFuncionario(est); //Adiciona estoquista ao controle de funcionários
                            }

                            if (op == 2) { //Contratar operador(a) de caixa
                                OperadorCaixa ope = new OperadorCaixa(s1, s2, d1, s3, s4); //Cria novo(a) operador(a) de caixa
                                controleFuncionarios.contrataFuncionario(ope); //Adiciona operador(a) de caixa ao controle de funcionários
                            }

                            controleFuncionarios.salvarDados(); //Salva dados do funcionário em arquivo binário

                            break;

                        case 2: //Demitir funcionário

                            System.out.print("\nNome: ");
                            s1 = sc.nextLine();
                            try {
                                System.out.println(controleFuncionarios.demiteFuncionario(s1));
                            } catch (NullPointerException npe) {
                                System.out.println(npe.getMessage());
                            }
                            controleFuncionarios.salvarDados(); //Salva dados do funcionário em arquivo binário
                            break;

                        case 3: //Listar funcionários
                            System.out.println(controleFuncionarios.imprimeFuncionarios());
                            break;

                        case 4: //Relatório do mês
                            System.out.println(admin.fluxoCaixaMensal());
                            gestaoDados.salvarDadosAdm(admin, "./dados/Administrativo.txt");
                            break;

                        case 5: //Fechar mês
                            System.out.println(admin.fechaMes(controleFuncionarios.getArrayList()));
                            gestaoDados.salvarDadosAdm(admin, "./dados/Administrativo.txt");
                            break;

                        case 6: //Relatório de meses anteriores
                            System.out.print("\nDigite o mes que voce deseja ver o relatorio: ");
                            v1 = sc.nextInt();
                            sc.nextLine();
                            try {
                                System.out.println(admin.relatorioMesN(v1));
                            } catch (Exception e) {
                                System.out.println("Mes Invalido!");
                            }

                            break;

                        case 7: //Consultar vendas de determinado mês
                            System.out.print("\nDigite o mes que voce deseja ver as compras feitas: ");
                            v1 = sc.nextInt();
                            sc.nextLine();

                            try {
                                System.out.println(admin.comprasMesN(v1));
                            } catch (Exception e) {
                                System.out.println("Mes invalido!");
                            }

                            break;
                            
                        case 8: //mudar margem de lucro de produto
                            
                                while (1 == 1) {
                                    try {
                                        System.out.print("\nCodigo do produto: ");
                                        v1 = sc.nextInt();
                                        sc.nextLine();
                                        System.out.print("\nNova Margem de lucro: ");
                                        f1 = sc.nextFloat();
                                        sc.nextLine();
                                        break;
                                    } catch (Exception e) {
                                        System.out.println("\nEntrada invalida! Digite novamente.");
                                        sc.nextLine();
                                    }
                                }

                                System.out.println(estoque.alteraMargemLucro(v1, f1));

                                estoque.salvarDados(); //Salva alterações no estoque

                                break;
                            
                        case 9: //Logout
                            break;

                        default:
                            System.out.println("\nOpcao invalida!");
                    }
                }
            } else //Caso 'f' seja da classe Estoquista, acessa menu do estoquista
             if (f instanceof Estoquista) {
                    int menuEstoquista = 0;

                    while (menuEstoquista != 6) {
                        System.out.println("\n=============== MENU DO ESTOQUISTA ================");
                        System.out.println("\n1- Cadastrar produto\n"
                                + "2- Remover produto\n"
                                + "3- Repor produto\n"
                                + "4- Consultar produto\n"
                                + "5- Listar estoque\n"
                                + "6- Logout\n");

                        try {
                            menuEstoquista = sc.nextInt();
                            sc.nextLine();
                        } catch (Exception e) {
                            sc.nextLine();
                        }

                        switch (menuEstoquista) {
                            case 1: //Cadastrar produto
                                while (1 == 1) {
                                    try {
                                        System.out.print("\nNome: ");
                                        s1 = sc.nextLine();
                                        System.out.print("Preco de compra: ");
                                        d1 = sc.nextDouble();
                                        sc.nextLine();
                                        System.out.print("Quantidade: ");
                                        v1 = sc.nextInt();
                                        System.out.print("Margem de lucro (%): ");
                                        f1 = sc.nextFloat();
                                        sc.nextLine();
                                        break;
                                    } catch (Exception e) {
                                        System.out.println("\nEntrada invalida! Insira novamente os dados.");
                                        sc.nextLine();
                                    }
                                }

                                prod = new Produto(s1, v1, estoque.getCodProduto(), d1, f1); //Registra produto
                                System.out.println(estoque.adicionaProduto(prod));  //Adiciona produto ao estoque
                                System.out.println(admin.subtraiDinheiroTotal(d1 * v1));  //Subtrai o dinheiro do setor administrativo
                                gestaoDados.salvarDadosAdm(admin, "./dados/Administrativo.txt"); //Salva transação feita
                                estoque.salvarDados(); //Salva alteração no estoque
                                break;

                            case 2: //Remover produto

                                while (1 == 1) {
                                    try {
                                        System.out.print("\nCodigo do produto: ");
                                        v1 = sc.nextInt();
                                        break;
                                    } catch (Exception e) {
                                        System.out.println("\nEntrada invalida! Digite novamente.");
                                        sc.nextLine();
                                    }
                                }

                                System.out.println(estoque.removeProduto(v1));

                                estoque.salvarDados(); //Salva alterações no estoque

                                break;

                            case 3: //Repor produto

                                while (1 == 1) {
                                    try {
                                        System.out.print("\nCodigo do produto: ");
                                        v1 = sc.nextInt();
                                        System.out.print("Quantidade a repor: ");
                                        v2 = sc.nextInt();
                                        break;
                                    } catch (Exception e) {
                                        System.out.println("\nEntrada invalida! Digite novamente.");
                                        sc.nextLine();
                                    }
                                }

                                System.out.println(estoque.incrementaProduto(v1, v2));

                                estoque.salvarDados();

                                break;

                            case 4: //Consultar produto
                                while (1 == 1) {
                                    try {
                                        System.out.print("\nNome do produto: ");
                                        s1 = sc.nextLine();
                                        break;
                                    } catch (Exception e) {
                                        System.out.println("\nEntrada invalida! Digite novamente.");
                                        sc.nextLine();
                                    }
                                }

                                try {
                                    prod = estoque.identificaProduto(s1);
                                    System.out.println(prod.toString());
                                } catch (NullPointerException npe) {
                                    System.out.println(npe.getMessage());
                                    sc.nextLine();
                                }
                                break;

                            case 5: //Listar estoque
                                System.out.println(estoque.imprimirEstoque() + "");
                                break;

                            case 6: //Logout
                                break;

                            default:
                                System.out.println("\nOpcao invalida!");
                        }
                    }

                }
            if (f instanceof OperadorCaixa) {

                int menuCaixa = 0;

                while (menuCaixa != 2) {
                    System.out.println("\n=============== MENU DO(A) OPERADOR(A) DE CAIXA ===============");
                    System.out.println("\n1- Realizar compra\n"
                            + "2- Fechar caixa e deslogar");

                    try {
                        menuCaixa = sc.nextInt();
                        sc.nextLine();
                    } catch (Exception e) {
                        System.out.println("\nOpcao invalida!");
                    }

                    switch (menuCaixa) {

                        case 1: //Realizar compra
                            System.out.println(estoque.imprimirEstoque() + "");

                            int menuCompra = 0;

                            while (menuCompra != 4) {
                                System.out.println("\n=============== COMPRA ===============");
                                System.out.println("\n1- Adicionar produto(s) ao carrinho\n"
                                        + "2- Remover produto(s) do carrinho\n"
                                        + "3- Mostrar carrinho\n"
                                        + "4- Finalizar compra\n");

                                try {
                                    menuCompra = sc.nextInt();
                                    sc.nextLine();
                                } catch (Exception e) {
                                    System.out.println("\nOpcao invalida!");
                                }
                                switch (menuCompra) {
                                    case 1: //Adicionar produto(s) ao carrinho
                                        while (1 == 1) {
                                            try {
                                                System.out.print("\nNome: ");
                                                s1 = sc.nextLine();
                                                System.out.print("Quantidade: ");
                                                v1 = sc.nextInt();
                                                sc.nextLine();
                                                break;
                                            } catch (Exception e) {
                                                System.out.println("\nEntrada invalida! Digite novamente.");
                                            }
                                        }

                                        try {
                                            prod = estoque.identificaProduto(s1);
                                            if (prod.getQuant() < v1) {
                                                System.out.println("\nQuantidade indisponivel no estoque.");
                                            } else {
                                                System.out.println(caixa.passaProduto(prod, v1));
                                                estoque.decrementaProduto(prod.getCodigo(), v1);
                                            }
                                        } catch (NullPointerException npe) {
                                            System.out.println(npe.getMessage());
                                        }
                                        break;

                                    case 2: //Remover produto(s) do carrinho
                                        System.out.print("\nDigite o nome do produto que deseja remover do carrinho: ");
                                        s1 = sc.nextLine();
                                        System.out.print("\nDigite a quantidade que deseja remover: ");
                                        v1 = sc.nextInt();
                                        sc.nextLine();

                                        System.out.println(caixa.retiraProduto(s1, v1));

                                        break;

                                    case 3: //Mostrar carrinho
                                        System.out.println(caixa.imprimeCarrinho());
                                        break;

                                    case 4: //Finalizar compra
                                        do {
                                            System.out.println("\nDigite a quantidade de dinheiro do cliente: ");
                                            d1 = sc.nextDouble();
                                            sc.nextLine();

                                            if (d1 < caixa.getValorCompra()) {
                                                System.out.println("Valor Insuficiente. Tente novamente.");
                                            }
                                        } while (d1 < caixa.getValorCompra());

                                        String cupomFiscal = caixa.finalizaCompra(d1);
                                        System.out.println(cupomFiscal);
                                        admin.addCupom(cupomFiscal);
                                        break;

                                    default:
                                        System.out.println("\nOpcao invalida!");
                                }
                            }

                            break;
                        case 2: //Fechar caixa e deslogar

                            d1 = caixa.fechaCaixa();
                            System.out.println("Caixa fechado. R$ " + d1 + " enviados ao setor administrativo");
                            admin.somaDinheiroTotal(d1);
                            gestaoDados.salvarDadosAdm(admin, "./dados/Administrativo.txt");

                            break;
                        default:
                            System.out.println("\nOpcao invalida!");

                    }
                }
            }

        }

    }
}
