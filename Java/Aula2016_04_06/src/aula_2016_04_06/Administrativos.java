package aula_2016_04_06;

/*
 * @author Pedro Henrique da Silva 11511BSI257
 */
public class Administrativos extends Funcionario{
    
    int horaExtra;
    
    public Administrativos(String nome, String rg, float sbase){
        super(nome,rg,sbase);
    }
    
    void setHoraExtra(int horaExtra){
        this.horaExtra = horaExtra;
    }
    
    float retornaSalario(){
        float salario = 0;
        salario += this.horaExtra * (sbase/100);
        salario += sbase;
        this.horaExtra = 0;
        return salario;
    }
    
    void addHoras(int novasHoras){
        this.horaExtra += novasHoras;
    }
}
