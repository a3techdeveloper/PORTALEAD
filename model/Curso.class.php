<?php

class Curso {
    
    private $id_curso;
    private $curso;
    private $imagem;
    private $duracao;
    private $descricao;
    private $embed;
    private $preco;
    private $ativo_curso;
    
    function getId_curso() {
        return $this->id_curso;
    }

    function getCurso() {
        return $this->curso;
    }

    function getImagem() {
        return $this->imagem;
    }

    function getDuracao() {
        return $this->duracao;
    }

    function getDescricao() {
        return $this->descricao;
    }

    function getEmbed() {
        return $this->embed;
    }

    function getPreco() {
        return $this->preco;
    }

    function getAtivo_curso() {
        return $this->ativo_curso;
    }

    function setId_curso($id_curso) {
        $this->id_curso = $id_curso;
    }

    function setCurso($curso) {
        $this->curso = $curso;
    }

    function setImagem($imagem) {
        $this->imagem = $imagem;
    }

    function setDuracao($duracao) {
        $this->duracao = $duracao;
    }

    function setDescricao($descricao) {
        $this->descricao = $descricao;
    }

    function setEmbed($embed) {
        $this->embed = $embed;
    }

    function setPreco($preco) {
        $this->preco = $preco;
    }

    function setAtivo_curso($ativo_curso) {
        $this->ativo_curso = $ativo_curso;
    }
    
}
