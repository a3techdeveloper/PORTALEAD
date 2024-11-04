<?php

include_once 'Conecta.class.php';

class CursoDAO extends Conecta {

    private $tabela = "curso";

    public function inserir(Curso $curso) {
        $sql = "insert into $this->tabela(curso,imagem,duracao,descricao,embed,preco)
            values(?,?,?,?,?,?)";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $curso->getCurso());
        $stmt->bindValue(2, $curso->getImagem());
        $stmt->bindValue(3, $curso->getDuracao());
        $stmt->bindValue(4, $curso->getDescricao());
        $stmt->bindValue(5, $curso->getEmbed());
        $stmt->bindValue(6, $curso->getPreco());
        return $stmt->execute();
    }

    public function editar(Curso $curso) {
        $sql = "update $this->tabela set curso=?, duracao=?,
                 descricao=?, embed=?, preco=?, ativo_curso=? where id_curso=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $curso->getCurso());
        $stmt->bindValue(2, $curso->getDuracao());
        $stmt->bindValue(3, $curso->getDescricao());
        $stmt->bindValue(4, $curso->getEmbed());
        $stmt->bindValue(5, $curso->getPreco());
        $stmt->bindValue(6, $curso->getAtivo_curso());
        $stmt->bindValue(7, $curso->getId_curso());
        return $stmt->execute();
    }

    public function editar_imagem(Curso $curso) {
        $sql = "update $this->tabela set imagem=? 
            where id_curso=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $curso->getImagem());
        $stmt->bindValue(2, $curso->getId_curso());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_curso desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar(Curso $curso) {
        $sql = "select * from $this->tabela where id_curso=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $curso->getId_curso());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_curso DESC LIMIT $ini, $reg";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Curso $curso) {
        $sql = "delete from $this->tabela where id_curso=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $curso->getId_curso());
        return $stmt->execute();
    }

    public function buscar($valor) {
        $sql = "select * from $this->tabela where curso like ? or descricao like ? order by id_curso desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $valor);
        $stmt->bindValue(2, $valor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

}
