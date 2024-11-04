<?php

include_once 'Conecta.class.php';

class ConteudoDAO extends Conecta {

    private $tabela = "conteudo";

    public function inserir(Conteudo $co) {
        $sql = "insert into $this->tabela(titulo,caminho,id_curso)values(?,?,?)";
        $stmt = ConteudoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $co->getTitulo());
        $stmt->bindValue(2, $co->getCaminho());
        $stmt->bindValue(3, $co->getId_curso());
        return $stmt->execute();
    }

    public function editar(Conteudo $co) {
        $sql = "update $this->tabela set titulo=?,caminho=?,id_curso=? 
            where id_conteudo=?";
        $stmt = ConteudoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $co->getTitulo());
        $stmt->bindValue(2, $co->getCaminho());
        $stmt->bindValue(3, $co->getId_curso());
        $stmt->bindValue(4, $co->getId_conteudo());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_conteudo desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar(Conteudo $co) {
        $sql = "select * from $this->tabela where id_conteudo=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $co->getId_conteudo());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_conteudo DESC LIMIT $ini, $reg";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Conteudo $co) {
        $sql = "delete from $this->tabela where id_conteudo=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $co->getId_conteudo());
        return $stmt->execute();
    }

    public function buscar($valor) {
        $sql = "select * from $this->tabela where titulo like ? or caminho like ? order by id_conteudo desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $valor);
        $stmt->bindValue(2, $valor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

}
