<?php

include_once 'Conecta.class.php';

class AdministradorDAO extends Conecta {

    private $tabela = "administrador";

    public function inserir(Administrador $adm) {
        $sql = "insert into $this->tabela(nome,sobrenome,email,senha)
            values(?,?,?,?)";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $adm->getNome());
        $stmt->bindValue(2, $adm->getSobrenome());
        $stmt->bindValue(3, $adm->getEmail());
        $stmt->bindValue(4, $adm->getSenha());
        return $stmt->execute();
    }

    public function editar(Administrador $adm) {
        $sql = "update $this->tabela set nome=?, sobrenome=?,
                email=?, senha=? where id_administrador=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $adm->getNome());
        $stmt->bindValue(2, $adm->getSobrenome());
        $stmt->bindValue(3, $adm->getEmail());
        $stmt->bindValue(4, $adm->getSenha());
        $stmt->bindValue(5, $adm->getId_administrador());
        return $stmt->execute();
    }

    public function editar_status(Administrador $adm) {
        $sql = "update $this->tabela set ativo_administrador=? 
            where id_administrador=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $adm->getAtivo_administrador());
        $stmt->bindValue(2, $adm->getId_administrador());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_administrador desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar(Administrador $adm) {
        $sql = "select * from $this->tabela where id_administrador=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $adm->getId_administrador());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_administrador DESC LIMIT $ini, $reg";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Administrador $adm) {
        $sql = "delete from $this->tabela where id_administrador=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $adm->getId_administrador());
        return $stmt->execute();
    }

    public function buscar($valor) {
        $sql = "select * from $this->tabela where nome like ? or sobrenome like ? order by id_administrador desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $valor);
        $stmt->bindValue(2, $valor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function logar(Administrador $adm) {
        $sql = "select * from $this->tabela where email=? and senha=?";
        $stmt = AdministradorDAO::preparaSQL($sql);
        $stmt->bindValue(1, $adm->getEmail());
        $stmt->bindValue(2, $adm->getSenha());
        $stmt->execute();
        $result = $stmt->fetch();
        if ($result) {
            $_SESSION["logadoADM"] = true;
            $_SESSION["ativo"] = $result->ativo_administrador;
            return true;
        } else {
            return false;
        }
    }

    public static function deslogar() {
        if ($_SESSION["logadoADM"]) {
            session_unset();
            //session_destroy();
            header("Location:login_adm.php");
        }
    }

}
