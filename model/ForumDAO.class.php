<?php

include_once 'Conecta.class.php';

class ForumDAO extends Conecta {

    private $tabela = "forum";

    public function inserir(Forum $fo) {
        $sql = "insert into $this->tabela(titulo,mensagem)values(?,?)";
        $stmt = ForumDAO::preparaSQL($sql);
        $stmt->bindValue(1, $fo->getTitulo());
        $stmt->bindValue(2, $fo->getMensagem());
        return $stmt->execute();
    }

    public function editar(Forum $fo) {
        $sql = "update $this->tabela set titulo=?, mensagem=?, ativo_forum=? where id_forum=?";
        $stmt = ForumDAO::preparaSQL($sql);
        $stmt->bindValue(1, $fo->getTitulo());
        $stmt->bindValue(2, $fo->getMensagem());
        $stmt->bindValue(3, $fo->getAtivo_forum());
        $stmt->bindValue(4, $fo->getId_forum());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_forum desc";
        $stmt = ForumDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar(Forum $fo) {
        $sql = "select * from $this->tabela where id_forum=?";
        $stmt = ForumDAO::preparaSQL($sql);
        $stmt->bindValue(1, $fo->getId_forum());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_forum DESC LIMIT $ini, $reg";
        $stmt = ForumDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Forum $fo) {
        $sql = "delete from $this->tabela where id_forum=?";
        $stmt = ForumDAO::preparaSQL($sql);
        $stmt->bindValue(1, $fo->getId_forum());
        return $stmt->execute();
    }

}
