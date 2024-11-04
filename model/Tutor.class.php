<?php

class Tutor {
    
    private $id_tutor;
    private $nome_tutor;
    private $sobrenome_tutor;
    private $email_tutor;
    private $telefone_tutor;
    private $foto;
    
    function getId_tutor() {
        return $this->id_tutor;
    }

    function getNome_tutor() {
        return $this->nome_tutor;
    }

    function getSobrenome_tutor() {
        return $this->sobrenome_tutor;
    }

    function getEmail_tutor() {
        return $this->email_tutor;
    }
    
    function getTelefone_tutor() {
        return $this->telefone_tutor;
    }

    function getFoto() {
        return $this->foto;
    }

    function setId_tutor($id_tutor) {
        $this->id_tutor = $id_tutor;
    }

    function setNome_tutor($nome_tutor) {
        $this->nome_tutor = $nome_tutor;
    }

    function setSobrenome_tutor($sobrenome_tutor) {
        $this->sobrenome_tutor = $sobrenome_tutor;
    }

    function setEmail_tutor($email_tutor) {
        $this->email_tutor = $email_tutor;
    }
    
    function setTelefone_tutor($telefone_tutor) {
        $this->telefone_tutor = $telefone_tutor;
    }

    function setFoto($foto) {
        $this->foto = $foto;
    }
    
}
