<?php

include_once 'Conecta.class.php';

class DownloadDAO extends Conecta {

    private $tabela = "download";

    public function inserir(Download $d) {
        $sql = "insert into $this->tabela(titulo_download,caminho,id_aula)
                values(?,?,?)";
        $stmt = DownloadDAO::preparaSQL($sql);
        $stmt->bindValue(1, $d->getTitulo_download());
        $stmt->bindValue(2, $d->getCaminho());
        $stmt->bindValue(3, $d->getId_aula());
        return $stmt->execute();
    }

    public function editar(Download $d) {
        $sql = "update $this->tabela set titulo_download=?, caminho=?, id_aula=?
                where id_download=?";
        $stmt = DownloadDAO::preparaSQL($sql);
        $stmt->bindValue(1, $d->getTitulo_download());
        $stmt->bindValue(2, $d->getCaminho());
        $stmt->bindValue(3, $d->getId_aula());
        $stmt->bindValue(4, $d->getId_download());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_download desc";
        $stmt = DownloadDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar(Download $d) {
        $sql = "select * from $this->tabela where id_download=?";
        $stmt = DownloadDAO::preparaSQL($sql);
        $stmt->bindValue(1, $d->getId_download());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_download DESC LIMIT $ini, $reg";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Download $d) {
        $sql = "delete from $this->tabela where id_download=?";
        $stmt = DownloadDAO::preparaSQL($sql);
        $stmt->bindValue(1, $d->getId_download());
        return $stmt->execute();
    }

}
