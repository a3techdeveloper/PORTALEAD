<?php

class Conteudo {
    
    private $id_conteudo;
    private $titulo;
    private $caminho;
    private $id_curso;
    
    function getId_conteudo() {
        return $this->id_conteudo;
    }

    function getTitulo() {
        return $this->titulo;
    }

    function getCaminho() {
        return $this->caminho;
    }

    function getId_curso() {
        return $this->id_curso;
    }

    function setId_conteudo($id_conteudo) {
        $this->id_conteudo = $id_conteudo;
    }

    function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    function setCaminho($caminho) {
        $this->caminho = $caminho;
    }

    function setId_curso($id_curso) {
        $this->id_curso = $id_curso;
    }
    
}
