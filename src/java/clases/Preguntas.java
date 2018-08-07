/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.util.Collections;
import java.util.List;

/**
 *
 * @author roboPC
 */
public class Preguntas {
    String pregunta;
    String respuestaCorrecta;
    List <String> respuestas;
    String ans="";
    public Preguntas(String pregunta, String respuestaCorrecta, List<String> respuestas) {
        this.pregunta = pregunta;
        this.respuestaCorrecta = respuestaCorrecta;
        this.respuestas = respuestas;
    }

    public void setAns(String ans) {
        this.ans = ans;
    }
    
    public void desorden(){
        Collections.shuffle(respuestas);
    }
    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public void setRespuestaCorrecta(String respuestaCorrecta) {
        this.respuestaCorrecta = respuestaCorrecta;
    }

    public void setRespuestas(List<String> respuestas) {
        this.respuestas = respuestas;
    }

    public String getPregunta() {
        return pregunta;
    }

    public String getRespuestaCorrecta() {
        return respuestaCorrecta;
    }

    public List<String> getRespuestas() {
        return respuestas;
    }   
}
