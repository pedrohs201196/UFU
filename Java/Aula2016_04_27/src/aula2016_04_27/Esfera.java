/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula2016_04_27;

/**
 *
 * @author a11511BSI257
 */
public class Esfera extends FormaTridimensional{
    
    public Esfera(String nome, int raio, int x, int y, int z){
        this.nome = nome;
        this.raio = raio;
        this.x = x;
        this.y = y;
        this.z = z;
    }
    
    float raio;
    
    @Override
    public float obterArea(){
        return (4 * ((float)3.14) * raio);
    }
    
    @Override
    public float obterVolume(){
        return (4/3) * ((float)3.14) * (raio*raio);
    }
}
