<?php

class Matricula {
    
    private $id_matricula;
    private $id_curso;
    private $id_aluno;
    private $data_matricula;
    private $hora_matricula;
    private $ativo_matricula;
    
    function getId_matricula() {
        return $this->id_matricula;
    }

    function getId_curso() {
        return $this->id_curso;
    }

    function getId_aluno() {
        return $this->id_aluno;
    }

    function getData_matricula() {
        return $this->data_matricula;
    }

    function getHora_matricula() {
        return $this->hora_matricula;
    }

    function getAtivo_matricula() {
        return $this->ativo_matricula;
    }

    function setId_matricula($id_matricula) {
        $this->id_matricula = $id_matricula;
    }

    function setId_curso($id_curso) {
        $this->id_curso = $id_curso;
    }

    function setId_aluno($id_aluno) {
        $this->id_aluno = $id_aluno;
    }

    function setData_matricula($data_matricula) {
        $this->data_matricula = $data_matricula;
    }

    function setHora_matricula($hora_matricula) {
        $this->hora_matricula = $hora_matricula;
    }

    function setAtivo_matricula($ativo_matricula) {
        $this->ativo_matricula = $ativo_matricula;
    }

}
