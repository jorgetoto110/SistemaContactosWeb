/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author Jorge
 */
public class Agenda {
    ArrayList<Contacto> contactos;

    public Agenda() {
        contactos= new ArrayList<>();
    }
    
    public void AgregarContacto(Contacto c){
    contactos.add(c);
    }
}
