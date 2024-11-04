<?php

class Download {
    
    private $id_download;
    private $titulo_download;
    private $caminho;
    private $id_aula;
    
    function getId_download() {
        return $this->id_download;
    }

    function getTitulo_download() {
        return $this->titulo_download;
    }

    function getCaminho() {
        return $this->caminho;
    }

    function getId_aula() {
        return $this->id_aula;
    }

    function setId_download($id_download) {
        $this->id_download = $id_download;
    }

    function setTitulo_download($titulo_download) {
        $this->titulo_download = $titulo_download;
    }

    function setCaminho($caminho) {
        $this->caminho = $caminho;
    }

    function setId_aula($id_aula) {
        $this->id_aula = $id_aula;
    }
    
}
