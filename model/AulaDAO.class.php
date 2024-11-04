<?php

include_once 'Conecta.class.php';

class AulaDAO extends Conecta {

    private $tabela = "aula";

    public function inserir(Aula $aula) {
        $sql = "insert into $this->tabela(numero_aula,titulo_aula,duracao_aula,embed_youtube,descricao,id_curso)
            values(?,?,?,?,?,?)";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $aula->getNumero_aula());
        $stmt->bindValue(2, $aula->getTitulo_aula());
        $stmt->bindValue(3, $aula->getDuracao_aula());
        $stmt->bindValue(4, $aula->getEmbed_youtube());
        $stmt->bindValue(5, $aula->getDescricao());
        $stmt->bindValue(6, $aula->getId_curso());
        return $stmt->execute();
    }

    public function editar(Aula $aula) {
        $sql = "update $this->tabela set numero_aula=?, titulo_aula=?,
                duracao_aula=?, embed_youtube=?, descricao=?, id_curso=? where id_aula=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $aula->getNumero_aula());
        $stmt->bindValue(2, $aula->getTitulo_aula());
        $stmt->bindValue(3, $aula->getDuracao_aula());
        $stmt->bindValue(4, $aula->getEmbed_youtube());
        $stmt->bindValue(5, $aula->getDescricao());
        $stmt->bindValue(6, $aula->getId_curso());
        $stmt->bindValue(7, $aula->getId_aula());
        return $stmt->execute();
    }

    public function editar_status(Aula $aula) {
        $sql = "update $this->tabela set ativo_aula=? 
            where id_aula=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $aula->getAtivo_aula());
        $stmt->bindValue(2, $aula->getId_aula());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_aula asc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar(Aula $aula) {
        $sql = "select * from $this->tabela where id_aula=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $aula->getId_aula());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_aula DESC LIMIT $ini, $reg";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Aula $aula) {
        $sql = "delete from $this->tabela where id_aula=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $aula->getId_aula());
        return $stmt->execute();
    }

    public function buscar($valor) {
        $sql = "select * from $this->tabela where titulo_aula like ? or numero_aula like ? order by id_aula desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $valor);
        $stmt->bindValue(2, $valor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

}
