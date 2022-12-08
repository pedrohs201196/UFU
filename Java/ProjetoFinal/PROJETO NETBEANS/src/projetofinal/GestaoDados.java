//A classe Gestao de Dados possui métodos para ler e salvar arquivos em binário.

package projetofinal;

import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;

public class GestaoDados implements Serializable {

    //Salva dados de um ArrayList em arquivo binário
    public void salvarDados(ArrayList lista, String caminho) {
        FileOutputStream escritorArquivo = null;
        ObjectOutputStream escritorObj = null;
        try {
            escritorArquivo = new FileOutputStream(caminho);
            escritorObj = new ObjectOutputStream(escritorArquivo);
            escritorObj.writeObject(lista);
        } catch (FileNotFoundException e) {
            System.out.println(e.getMessage());
        } catch (IOException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (escritorArquivo != null) {
                    escritorArquivo.close();
                }
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
    }

    //Lê dados de um ArrayList em arquivo binário
    public ArrayList lerDados(String caminho) {
        ObjectInputStream leitorObj = null;
        FileInputStream leitorArquivo = null;
        try {
            leitorArquivo = new FileInputStream(caminho);
            leitorObj = new ObjectInputStream(leitorArquivo);
            ArrayList dados = (ArrayList) leitorObj.readObject();
            return dados;
        } catch (EOFException e) {
            try {
                leitorArquivo.close();
            } catch (IOException ex) {
                System.out.println(ex.getMessage());
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (leitorArquivo != null) {
                    leitorArquivo.close();
                }
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return null;
    }

    //Salva dados do setor administrativo em arquivo binário
    public void salvarDadosAdm(Administrativo adm, String caminho) {
        FileOutputStream escritorArquivo = null;
        ObjectOutputStream escritorObj = null;
        try {
            escritorArquivo = new FileOutputStream(caminho);
            escritorObj = new ObjectOutputStream(escritorArquivo);
            escritorObj.writeObject(adm);
        } catch (FileNotFoundException e) {
            System.out.println(e.getMessage());
        } catch (IOException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (escritorArquivo != null) {
                    escritorArquivo.close();
                }
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
    }

    //Lê dados do setor administrativo em arquivo binário
    public Administrativo lerDadosAdm(String caminho) {
        ObjectInputStream leitorObj = null;
        FileInputStream leitorArquivo = null;
        try {
            leitorArquivo = new FileInputStream(caminho);
            leitorObj = new ObjectInputStream(leitorArquivo);
            Administrativo dados = (Administrativo) leitorObj.readObject();
            return dados;
        } catch (EOFException e) {
            try {
                leitorArquivo.close();
            } catch (IOException ex) {
                System.out.println(ex.getMessage());
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (leitorArquivo != null) {
                    leitorArquivo.close();
                }
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return null;
    }
}
