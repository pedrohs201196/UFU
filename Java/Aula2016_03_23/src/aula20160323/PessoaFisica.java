package aula20160323;

/**
 * @author Pedro Henrique da Silva 11511BSI257
 */
public class PessoaFisica {
    private String nome, cpf;
    private int idade, soma1, soma2, resto1, resto2;
    private int n[] = new int [11];
    
    //registrar dados da pessoa
    public void setPessoa(String nome1, int idade1, String cpf1){
        setNome(nome1);
        setIdade(idade1);
        setCPF(cpf1);
    }
    
    public void setNome(String s){
        nome = s;
    }
    
    public void setIdade(int age){
        idade = age;
    }
    
    public void setCPF(String s){
        cpf = s;
    }
    
    public boolean validaCPF(){
        
        //falso se o cpf não possuir 11 digitos
        if (cpf.length() != 11)
            return false;
        
        //falso se todos os digitos do cpf forem iguais
        if (("11111111111".equals(cpf)) || 
           ("22222222222".equals(cpf)) ||
           ("33333333333".equals(cpf)) ||
           ("44444444444".equals(cpf)) ||
           ("55555555555".equals(cpf)) ||
           ("66666666666".equals(cpf)) ||
           ("77777777777".equals(cpf)) ||
           ("88888888888".equals(cpf)) ||
           ("99999999999".equals(cpf)) ||
           ("00000000000".equals(cpf)))
                return false;
        
        for (int i = 0; i < cpf.length(); i++){
            n[i] = cpf.charAt(i) - 48;
        }
        
        soma1 = n[0]*10 + n[1]*9 + n[2]*8 + n[3]*7 + n[4]*6 + n[5]*5 + n[6]*4 + n[7]*3 + n[8]*2;
        
        resto1 = (soma1 * 10)%11;
        
        if (resto1 == 10)
                resto1 = 0;
  
        soma2 = n[0]*11 + n[1]*10 + n[2]*9 + n[3]*8 + n[4]*7 + n[5]*6 + n[6]*5 + n[7]*4 + n[8]*3 + n[9]*2;
        
        resto2 = (soma2 * 10)%11;
        
        if (resto2 == 10)
                resto2 = 0;
        
        return (resto1 == cpf.charAt(9)-48) && (resto2 == cpf.charAt(10)-48);
    }
}
