<?php

class Mural {

    private $id_mural;
    private $titulo;
    private $mensagem;
    private $data_mural;
    private $hora_mural;
    private $id_aula;
    
    function getId_mural() {
        return $this->id_mural;
    }

    function getTitulo() {
        return $this->titulo;
    }

    function getMensagem() {
        return $this->mensagem;
    }

    function getData_mural() {
        return $this->data_mural;
    }

    function getHora_mural() {
        return $this->hora_mural;
    }

    function getId_aula() {
        return $this->id_aula;
    }

    function setId_mural($id_mural) {
        $this->id_mural = $id_mural;
    }

    function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    function setMensagem($mensagem) {
        $this->mensagem = $mensagem;
    }

    function setData_mural($data_mural) {
        $this->data_mural = $data_mural;
    }

    function setHora_mural($hora_mural) {
        $this->hora_mural = $hora_mural;
    }

    function setId_aula($id_aula) {
        $this->id_aula = $id_aula;
    }
}
