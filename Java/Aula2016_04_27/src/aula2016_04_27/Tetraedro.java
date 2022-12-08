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
public class Tetraedro extends FormaTridimensional{
    
    public Tetraedro(String nome, int lado, int x, int y, int z){
        this.nome = nome;
        this.lado = lado;
        this.x = x;
        this.y = y;
        this.z = z;
    }
    
    @Override
    public float obterArea(){
        return  (float) ((lado*lado) * Math.sqrt(3));
    }
    
    @Override
    public float obterVolume(){
        return (1/3) * lado * lado;
    }
}
