package Aula20160330;

/**
 *
 * @author Pedro Henrique da Silva 11511BSI257
 */

public class Tempo {
    
    private int h, m, s;
    
    public Tempo(int h1, int m1, int s1){
        
        setHora(h1);
        setMinuto(m1);
        setSegundo(s1);        
    }
    
    void setHora(int h1){
        if ((h1 >=0) && (h1 <= 23))
            h = h1;
        else
            h = 0;
    }
    
    void setMinuto(int m1){
        if ((m1 >=0) && (m1 <= 59))
            m = m1;
        else
            m = 0;
    }
    
    void setSegundo(int s1){
        if ((s1 >=0) && (s1 <= 59))
            s = s1;
        else
            s = 0;
    }
     
    String mostraTempo1(){
        return ""+checaDigito(h)+"h"+checaDigito(m)+"m"+checaDigito(s)+"s";
    }
    
    String mostraTempo2(){
        
        if (h > 12)
            return ""+checaDigito(h-12)+":"+checaDigito(m)+":"+checaDigito(s)+" PM";
        else
            return ""+checaDigito(h)+":"+checaDigito(m)+":"+checaDigito(s)+" AM";
        
    }
    
    void incrementaMinuto(){
        m++;
        if (m > 59){
            m = 0;
            h++;
            
            if(h > 23)
                h = 0;
        }          
    }
    
    void decrementaMinuto(){
        m--;
        if (m < 0){
            m = 59;
            h--;
            
            if(h < 0)
                h = 23;
        }          
    }
    
    void incrementaHora(){
        h++;
        if(h > 23)
            h = 0;
    }
    
    void decrementaHora(){
        h--;
        if(h < 0)
            h = 23;
    }
    
    String checaDigito(int n){
        if (n < 10)
            return "0"+n+"";
        else
            return ""+n+"";
    }
    
    void zeraSegundos(){
        setSegundo(0);
    }
    
    void meioDia(){
        setHora(12);
        setMinuto(0);
        setSegundo(0);
    }
    
    void meiaNoite(){
        setHora(0);
        setMinuto(0);
        setSegundo(0);
    }
    
}
