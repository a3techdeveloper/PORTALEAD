<?php

class RespostaForum {
    
    private $id_resposta;
    private $resposta;
    private $data_resposta;
    private $hora_resposta;
    private $id_forum;
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

    function getId_forum() {
        return $this->id_forum;
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

    function setId_forum($id_forum) {
        $this->id_forum = $id_forum;
    }

    function setId_aluno($id_aluno) {
        $this->id_aluno = $id_aluno;
    }
    
    
}
