<?php

class Material {
    
    private $id_material;
    private $titulo;
    private $caminho;
    private $id_curso;
    
    function getId_material() {
        return $this->id_material;
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

    function setId_material($id_material) {
        $this->id_material = $id_material;
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
