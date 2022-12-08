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
public class Quadrado extends FormaBidimensional{
    
    public Quadrado(String nome, int lado, int x, int y){
        this.nome = nome;
        this.lado = lado;
        this.x = x;
        this.y = y;
    }
    
    @Override
    public float obterArea(){
        return lado*lado;
    }
}
