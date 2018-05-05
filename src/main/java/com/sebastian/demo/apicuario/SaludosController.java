/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sebastian.demo.apicuario;

/**
 *
 * @author sebastian
 */
public class SaludosController implements Saludos {

    @Override
    public String saludar(String nombre) {
        return "Hola " + nombre + "!!";
    }

}
