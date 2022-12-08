package aula_2016_04_06;



/*
 * @author Pedro Henrique da Silva 11511BSI257
 */
public class Loja {
    
    Vendedores ven[] = new Vendedores[5];
    Administrativos adm[] = new Administrativos[5];
    
    private int ctVen = 0, ctAdm = 0;
    
    void registraVendedor(String nome, String rg, float sbase){
        if (ctVen < 5){
            Vendedores v = new Vendedores(nome,rg,sbase);
            ven[ctVen] = v; 
            ctVen++;
        }            
    }
    
    void registraAdministrativo(String nome, String rg, float sbase){
        if (ctAdm < 5){
            Administrativos a= new Administrativos(nome,rg,sbase);
            adm[ctAdm] = a; 
            ctAdm++;
        }          
    }
    
    void showFuncionarios(){
        
        System.out.println("Vendedores: \n");
        for(int i = 0; i < ctVen; i++){
            System.out.println("Vendedor "+(i+1)+"\n");
            System.out.println("Nome:"+ven[i].nome+"\n"
                             + "Salario Base: "+ven[i].sbase+"\n"
                             + "Vendas: "+ven[i].vendas+"");
        }
        
        System.out.print("\n");
        
        System.out.println("Administradores: \n");
        for(int i = 0; i < ctAdm; i++){
            System.out.println("Administrador "+(i+1)+"\n");
            System.out.println("Nome:"+adm[i].nome+"\n"
                             + "Salario Base: "+adm[i].sbase+"\n"
                             + "Hora Extra: "+adm[i].horaExtra+"");
        }
    }
    
    String alteraSalarioBaseV(int n, float novosal){
        n--;
        if ((n < 0) || (n >= ctVen))
            return "Digite apenas numeros validos";
        
        else{
            ven[n].setSalarioBase(novosal);
            return "Novo salario base: "+ven[n].sbase+"";
            }
    }
    
    String alteraSalarioBaseA(int n, float novosal){
        n--;
        if ((n < 0) || (n >= ctVen))
            return "Digite apenas numeros validos";
        
        else{
            adm[n].setSalarioBase(novosal);
            return "Novo salario base: "+adm[n].sbase+"";
            }
    }
    
    String addVendasV(int n, float novasVendas){
       n--;
        if ((n < 0) || (n >= ctVen))
            return "Digite apenas numeros validos"; 
        else{
            ven[n].addVendas(novasVendas);
            return "Novo total de vendas: "+ven[n].vendas+"";
        }
    }
    
    String addHoras(int n, int novasHoras){
       n--;
        if ((n < 0) || (n >= ctAdm))
            return "Digite apenas numeros validos"; 
        else{
            adm[n].addHoras(novasHoras);
            return "Novo total de horas extras: "+adm[n].horaExtra+"";
        }
    }
    
    String vendedorRecebe(int n){
        n--;
        if ((n < 0) || (n >= ctVen))
            return "Digite apenas numeros validos"; 
        else{
            return "Salario recebido: "+ven[n].retornaSalario()+"";
        }
    }
    
    String administrativoRecebe(int n){
        n--;
        if ((n < 0) || (n >= ctAdm))
            return "Digite apenas numeros validos"; 
        else{
            return "Salario recebido: "+adm[n].retornaSalario()+"";
        }
    }
}
