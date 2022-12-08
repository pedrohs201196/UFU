/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula2016_04_20;

/**
 *
 * @author a11511BSI257
 */
public class Triangulo extends FormaBidimensional{
    
    public Triangulo(String nome, int lado, int x, int y){
        this.nome = nome;
        this.lado = lado;
        this.x = x;
        this.y = y;
    }
    
    float obterArea(){
        return (lado*lado)/2;
    } 
}
