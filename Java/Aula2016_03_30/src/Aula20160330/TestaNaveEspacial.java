package Aula20160330;

/**
 * @author Pedro Henrique da Silva 11511BSI257
 */

public class TestaNaveEspacial {
    NaveEspacial nave[] = new NaveEspacial[5];
    private int ctNaves = 0;
    
    //CRIAR NAVE
    public void criaNave(String s){
        
        if(ctNaves < 3){
        nave[ctNaves] = new NaveEspacial(s,randomNumber());
        System.out.println(""+nave[ctNaves].mostrarNave()+"");
        ctNaves++;
        }
        else if (ctNaves < 5){
            System.out.println("Superpopulacao de Naves");
            nave[ctNaves] = new NaveEspacial("Nave com Defeito",0);
            System.out.println(""+nave[ctNaves].mostrarNave()+"");
            ctNaves++;
        }
        
    }
    
    //GERAR NUMERO ALEATORIO ENTRE 5 E 10
    int randomNumber(){
        return 5+(int)(6*Math.random());
    }
    
    //MOSTRAR NAVE
    public String showNave(int n){
        if ((n > 0) && (n <= ctNaves))
            return nave[n-1].mostrarNave();
        else
            return "Numero de nave invalido";
    }
    
    //NAVE MAIS RÁPIDA
    public String maisRapida(int n1, int n2){
        n1--; n2--;
        if ((n1 < 0) || (n1 >= ctNaves) || (n2 < 0) || (n2 >= ctNaves))
            return "Digite apenas numeros validos";
        
        else
            return ""+nave[n1].naveNaFrente(nave[n2])+"";
    }
    
    //QUANTIDADE DE NAVES
    public int quant(){
        return ctNaves;
    }
    
    //MOSTRAR TODAS AS NAVES
    public void mostrarTodas(){
        for (int i=0; i < ctNaves; i++){
            System.out.println(""+nave[i].mostrarNave()+"");
        }
    }
    
    
}
