package pratica_aula14;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class Pratica_Aula14 {


    public static void main(String[] args) {
        System.out.println("Checando se o Driver está registrado com DriverManager:");
        
        try{
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException cnfe){
            System.out.println("não foi possivel achar o driver!");
            cnfe.printStackTrace();
            System.exit(1);
        }
        
        System.out.println("O registro do driver esta ok!");
        
        Connection conexao = null;
        Statement sentenca = null;
        Statement sentencaExclusiva = null;
        
        try{
            System.out.println("Conectando com servidor: ");
            String url = "jdbc:postgresql://localhost/postgres?user=postgres&password=root";
            conexao = DriverManager.getConnection(url);
            System.out.println("conectado!");
            sentenca = conexao.createStatement();
        } catch (SQLException se){
            System.out.println("não foi possível conectar ao banco de dados.");
            se.printStackTrace();
        }
        
        try{
            sentenca.execute("drop table pessoa");
        }catch (SQLException se){}
        
//        try {
//            sentenca.execute("create table pessoa (id decimal(10) primary key," + " nome varchar(20), endereco varchar(20))");
//            sentenca.execute("insert into pessoa values (123,'Andre Silva', 'Av Brasil 100')");
//            sentenca.execute("insert into pessoa values (234, 'Maria Bonita', 'Av Tiradentes 400')");
//            sentenca.execute("insert into pessoa values (456, 'Joana Darc', 'Rua Principal 200')");
//            
//        } catch (SQLException se){
//            System.out.println("Não foi possível executar a consulta! Meus pesames!");
//            se.printStackTrace();
//            System.exit(1);
//       }
        //Com o Statemente levou 7 segundos
         try {
            sentenca.execute("create table pessoa (id decimal(10) primary key," + " nome varchar(20), endereco varchar(20))");
            String sql = "insert into pessoa (id, nome, endereco) values (?, ?, ?)";
            PreparedStatement st = conexao.prepareStatement(sql);
            
            int i;
            int id = 0;
            String nome = null, endereco = null;
            
            for(i=10000; i < 20001; i++){
                id = i;
                nome = "Maressita "+i;
                endereco = "Rua "+i;
                st.setInt(1, id);
                st.setString(2, nome);
                st.setString(3, endereco);
                int nroInsercoes = st.executeUpdate();
            }
            
        } catch (SQLException se){
            System.out.println("Não foi possível executar a consulta! Meus pesames!");
            se.printStackTrace();
            System.exit(1);
       }
       //Com o PreparedStatemente levou 7 segundos
        
       
       try{
           ResultSet resposta = sentenca.executeQuery("select * from pessoa");
           ResultSetMetaData metaDados = resposta.getMetaData();
           int nroDeColunas = metaDados.getColumnCount();
           for (int i = 1; i<= nroDeColunas; i++)
               System.out.printf("%-8s\t", metaDados.getColumnName(i));
            System.out.println();
            
            while (resposta.next()) {
                for (int i = 1; i <= nroDeColunas; i++)
                    System.out.printf("%-8s\t", resposta.getObject(i));
                System.out.println();
           }
       } catch(SQLException se){
           System.out.println("Não foi possível executar a consulta.");
           se.printStackTrace();
           System.exit(1);
       }
       
       //encerrar conexão ^^
       try{
           sentenca.close();
           conexao.close();
       } catch (Exception exception){
           exception.printStackTrace();
           System.exit(1);
       }
       
    }
    
}
