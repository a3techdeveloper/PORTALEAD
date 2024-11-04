<?php

class Forum {
    
    private $id_forum;
    private $titulo;
    private $mensagem;
    private $data_forum;
    private $hora_forum;
    private $ativo_forum;
    
    function getId_forum() {
        return $this->id_forum;
    }

    function getTitulo() {
        return $this->titulo;
    }

    function getMensagem() {
        return $this->mensagem;
    }

    function getData_forum() {
        return $this->data_forum;
    }

    function getHora_forum() {
        return $this->hora_forum;
    }
    
    function getAtivo_forum() {
        return $this->ativo_forum;
    }

    function setId_forum($id_forum) {
        $this->id_forum = $id_forum;
    }

    function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    function setMensagem($mensagem) {
        $this->mensagem = $mensagem;
    }

    function setData_forum($data_forum) {
        $this->data_forum = $data_forum;
    }

    function setHora_forum($hora_forum) {
        $this->hora_forum = $hora_forum;
    }
    
    function setAtivo_forum($ativo_forum) {
        $this->ativo_forum = $ativo_forum;
    }
    
}
