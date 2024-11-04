<?php

include_once 'Conecta.class.php';

class MaterialDAO extends Conecta {

    private $tabela = "material";

    public function inserir(Material $material) {
        $sql = "insert into $this->tabela(titulo,caminho,id_curso)
            values(?,?,?)";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $material->getTitulo());
        $stmt->bindValue(2, $material->getCaminho());
        $stmt->bindValue(3, $material->getId_curso());
        return $stmt->execute();
    }

    public function editar(Material $material) {
        $sql = "update $this->tabela set titulo=?, caminho=?,
                id_curso=? where id_material=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $material->getTitulo());
        $stmt->bindValue(2, $material->getCaminho());
        $stmt->bindValue(3, $material->getId_curso());
        $stmt->bindValue(4, $material->getId_material());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_material desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar($id) {
        $sql = "select * from $this->tabela where id_material = ?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $id);
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_material DESC LIMIT $ini, $reg";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Material $material) {
        $sql = "delete from $this->tabela where id_material=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $material->getId_material());
        return $stmt->execute();
    }

    public function buscar($valor) {
        $sql = "select * from $this->tabela where titulo like ? or caminho like ? order by id_material desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $valor);
        $stmt->bindValue(2, $valor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

}
