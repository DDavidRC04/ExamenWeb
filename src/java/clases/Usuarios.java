/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author roboPC
 */
public class Usuarios {
    String usuario;
    String contraseña;
    String nombre;
    String apellidos;
    String correo;
    double Calificacion=0;
    

    public Usuarios(String usuario, String contraseña, String nombre, String correo) {
        this.usuario = usuario;
        this.contraseña = contraseña;
        this.nombre = nombre;
        this.correo = correo;
      
    }

    public double getCalificacion() {
        return Calificacion;
    }

    public void setCalifcacion(double calificacion){
        this.Calificacion+=calificacion;
    }
    public void setCalifcacion2(double calificacion){
        this.Calificacion=calificacion;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getContraseña() {
        return contraseña;
    }
    
}
