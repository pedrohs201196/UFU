package aula_2016_04_06;

/**
 * @author Pedro
 */
public class Locadora {

    Video video[] = new Video[5];
    Audio audio[] = new Audio[5];
    VHS vhs[] = new VHS[5];
    
    private int ctVideo = 0, ctAudio = 0, ctVhs = 0;
    
    void registraVideo(String nome, String tipo, String genero, String ano, int copias, float preco, String diretor, String classificacao, int duracao){
        if (ctVideo < 5){
            Video v = new Video(nome, tipo, genero, ano, copias, preco, diretor, classificacao, duracao);
            video[ctVideo] = v; 
            ctVideo++;
        }            
    }
    
    void registraAudio(String nome, String tipo, String genero, String ano, int copias, float preco, String cantor, int n_faixas){
        if (ctVideo < 5){
            Audio a = new Audio(nome, tipo, genero, ano, copias, preco, cantor, n_faixas);
            audio[ctAudio] = a; 
            ctAudio++;
        }            
    }
    
    void registraVHS(String nome, String tipo, String genero, String ano, int copias, float preco, String diretor, String classificacao, int duracao, int rebobinada){
        if (ctVhs < 5){
            VHS v = new VHS(nome, tipo, genero, ano, copias, preco, diretor, classificacao, duracao, rebobinada);
            vhs[ctVhs] = v; 
            ctVhs++;
        }            
    }
    
    void showCatalogo(){
        
        System.out.println("CDS: \n");
        for(int i = 0; i < ctAudio; i++){
            System.out.println("Nome:"+audio[i].nome+"\n"
                             + "Cantor: "+audio[i].cantor+"\n"
                             + "Genero: "+audio[i].genero+"");
        }
        
        System.out.print("\n");
        
        System.out.println("DVDS: \n");
        for(int i = 0; i < ctVideo; i++){
            System.out.println("Nome:"+video[i].nome+"\n"
                             + "Diretor: "+video[i].diretor+"\n"
                             + "Genero: "+video[i].genero+"");
        }
        
        System.out.print("\n");
        
        System.out.println("VHS: \n");
        for(int i = 0; i < ctVhs; i++){
            System.out.println("Nome:"+vhs[i].nome+"\n"
                             + "Diretor: "+vhs[i].diretor+"\n"
                             + "Genero: "+vhs[i].genero+"\n"
                             + "Rebobinada: "+vhs[i].checkRebobinada()+"");
        }
    }
}
