<?php

class Exercicio {
    
    private $id_exercicio;
    private $id_aula;
    private $exercicio;
    private $data_publicacao;
    private $hora_publicacao;
    private $ativo_exercicio;
    
    function getId_exercicio() {
        return $this->id_exercicio;
    }

    function getId_aula() {
        return $this->id_aula;
    }
    
    function getExercicio() {
        return $this->exercicio;
    }

    function getData_publicacao() {
        return $this->data_publicacao;
    }

    function getHora_publicacao() {
        return $this->hora_publicacao;
    }

    function getAtivo_exercicio() {
        return $this->ativo_exercicio;
    }

    function setId_exercicio($id_exercicio) {
        $this->id_exercicio = $id_exercicio;
    }

    function setId_aula($id_aula) {
        $this->id_aula = $id_aula;
    }
    
    function setExercicio($exercicio) {
        $this->exercicio = $exercicio;
    }

    function setData_publicacao($data_publicacao) {
        $this->data_publicacao = $data_publicacao;
    }

    function setHora_publicacao($hora_publicacao) {
        $this->hora_publicacao = $hora_publicacao;
    }

    function setAtivo_exercicio($ativo_exercicio) {
        $this->ativo_exercicio = $ativo_exercicio;
    }
    
}
