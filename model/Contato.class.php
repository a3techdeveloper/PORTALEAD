<?php

class Contato {
    
    private $id_contato;
    private $nome;
    private $email;
    private $fone;
    private $mensagem;
    
    function getId_contato() {
        return $this->id_contato;
    }

    function getNome() {
        return $this->nome;
    }

    function getEmail() {
        return $this->email;
    }

    function getFone() {
        return $this->fone;
    }

    function getMensagem() {
        return $this->mensagem;
    }

    function setId_contato($id_contato) {
        $this->id_contato = $id_contato;
    }

    function setNome($nome) {
        $this->nome = $nome;
    }

    function setEmail($email) {
        $this->email = $email;
    }

    function setFone($fone) {
        $this->fone = $fone;
    }

    function setMensagem($mensagem) {
        $this->mensagem = $mensagem;
    }
    
}
