<?php

class UF {
    
    private $id_uf;
    private $sigla;
    private $descricao;
    
    function getId_uf() {
        return $this->id_uf;
    }

    function getSigla() {
        return $this->sigla;
    }

    function getDescricao() {
        return $this->descricao;
    }

    function setId_uf($id_uf) {
        $this->id_uf = $id_uf;
    }

    function setSigla($sigla) {
        $this->sigla = $sigla;
    }

    function setDescricao($descricao) {
        $this->descricao = $descricao;
    }    
}
