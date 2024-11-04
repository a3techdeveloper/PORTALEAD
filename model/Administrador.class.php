<?php

class Administrador {
    
    private $id_administrador;
    private $nome;
    private $sobrenome;
    private $email;
    private $senha;
    private $data_cadastro;
    private $hora_cadastro;
    private $ativo_administrador;
    
    function getId_administrador() {
        return $this->id_administrador;
    }

    function getNome() {
        return $this->nome;
    }

    function getSobrenome() {
        return $this->sobrenome;
    }

    function getEmail() {
        return $this->email;
    }

    function getSenha() {
        return $this->senha;
    }

    function getData_cadastro() {
        return $this->data_cadastro;
    }

    function getHora_cadastro() {
        return $this->hora_cadastro;
    }

    function getAtivo_administrador() {
        return $this->ativo_administrador;
    }

    function setId_administrador($id_administrador) {
        $this->id_administrador = $id_administrador;
    }

    function setNome($nome) {
        $this->nome = $nome;
    }

    function setSobrenome($sobrenome) {
        $this->sobrenome = $sobrenome;
    }

    function setEmail($email) {
        $this->email = $email;
    }

    function setSenha($senha) {
        $this->senha = $senha;
    }

    function setData_cadastro($data_cadastro) {
        $this->data_cadastro = $data_cadastro;
    }

    function setHora_cadastro($hora_cadastro) {
        $this->hora_cadastro = $hora_cadastro;
    }

    function setAtivo_administrador($ativo_administrador) {
        $this->ativo_administrador = $ativo_administrador;
    }
    
}
