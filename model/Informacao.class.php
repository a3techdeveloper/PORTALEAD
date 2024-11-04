<?php

class Informacao {
    
    private $id_informacao;
    private $titulo;
    private $informacao;
    private $id_curso;
    
    function getId_informacao() {
        return $this->id_informacao;
    }

    function getTitulo() {
        return $this->titulo;
    }

    function getInformacao() {
        return $this->informacao;
    }

    function getId_curso() {
        return $this->id_curso;
    }

    function setId_informacao($id_informacao) {
        $this->id_informacao = $id_informacao;
    }

    function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    function setInformacao($informacao) {
        $this->informacao = $informacao;
    }

    function setId_curso($id_curso) {
        $this->id_curso = $id_curso;
    }    
}
