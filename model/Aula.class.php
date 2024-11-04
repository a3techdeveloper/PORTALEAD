<?php

class Aula {
    
    private $id_aula;
    private $numero_aula;
    private $titulo_aula;
    private $duracao_aula;
    private $embed_youtube;
    private $descricao;
    private $ativo_aula;
    private $id_curso;
    
    function getId_aula() {
        return $this->id_aula;
    }
    
    function getNumero_aula() {
        return $this->numero_aula;
    }
    
    function getTitulo_aula() {
        return $this->titulo_aula;
    }

    function getDuracao_aula() {
        return $this->duracao_aula;
    }

    function getEmbed_youtube() {
        return $this->embed_youtube;
    }

    function getDescricao() {
        return $this->descricao;
    }

    function getAtivo_aula() {
        return $this->ativo_aula;
    }

    function getId_curso() {
        return $this->id_curso;
    }

    function setId_aula($id_aula) {
        $this->id_aula = $id_aula;
    }
    
    function setNumero_aula($numero_aula) {
        $this->numero_aula = $numero_aula;
    }
    
    function setTitulo_aula($titulo_aula) {
        $this->titulo_aula = $titulo_aula;
    }

    function setDuracao_aula($duracao_aula) {
        $this->duracao_aula = $duracao_aula;
    }

    function setEmbed_youtube($embed_youtube) {
        $this->embed_youtube = $embed_youtube;
    }

    function setDescricao($descricao) {
        $this->descricao = $descricao;
    }

    function setAtivo_aula($ativo_aula) {
        $this->ativo_aula = $ativo_aula;
    }

    function setId_curso($id_curso) {
        $this->id_curso = $id_curso;
    }
    
}
