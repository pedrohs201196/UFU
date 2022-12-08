package aula2016_05_18;


public class Contato {
    String nome, sexo, profissao, telefone, email;
    int idade;
    
    public Contato(String nome, int idade, String sexo, String profissao, String telefone, String email){
        this.nome = nome;
        this.idade = idade;
        this.sexo = sexo;
        this.profissao = profissao;
        this.telefone = telefone;
        this.email = email;
    }
    
    @Override
    public String toString(){
        return ""+nome+", "+idade+" anos de idade, do sexo "+sexo+", "+profissao+", telefone nº"+telefone+", email: "+email+"\n";
    }
}
