<?php

class Resposta {
    
    private $id_resposta;
    private $resposta;
    private $data_resposta;
    private $hora_resposta;
    private $id_mural;
    private $id_aluno;
    
    function getId_resposta() {
        return $this->id_resposta;
    }

    function getResposta() {
        return $this->resposta;
    }

    function getData_resposta() {
        return $this->data_resposta;
    }

    function getHora_resposta() {
        return $this->hora_resposta;
    }

    function getId_mural() {
        return $this->id_mural;
    }

    function getId_aluno() {
        return $this->id_aluno;
    }

    function setId_resposta($id_resposta) {
        $this->id_resposta = $id_resposta;
    }

    function setResposta($resposta) {
        $this->resposta = $resposta;
    }

    function setData_resposta($data_resposta) {
        $this->data_resposta = $data_resposta;
    }

    function setHora_resposta($hora_resposta) {
        $this->hora_resposta = $hora_resposta;
    }

    function setId_mural($id_mural) {
        $this->id_mural = $id_mural;
    }

    function setId_aluno($id_aluno) {
        $this->id_aluno = $id_aluno;
    }  
}
