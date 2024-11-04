<?php

include_once 'Conecta.class.php';

class AlunoDAO extends Conecta {

    private $tabela = "aluno";

    public function inserir(Aluno $al) {
        $sql = "insert into $this->tabela(cpf,aluno,profissao,telefone,data_nasc,endereco,
            cidade,bairro,cep,foto,email,senha,id_uf)values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        $stmt = AlunoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $al->getCpf());
        $stmt->bindValue(2, $al->getAluno());
        $stmt->bindValue(3, $al->getProfissao());
        $stmt->bindValue(4, $al->getTelefone());
        $stmt->bindValue(5, $al->getData_nasc());
        $stmt->bindValue(6, $al->getEndereco());
        $stmt->bindValue(7, $al->getCidade());
        $stmt->bindValue(8, $al->getBairro());
        $stmt->bindValue(9, $al->getCep());
        $stmt->bindValue(10, $al->getFoto());
        $stmt->bindValue(11, $al->getEmail());
        $stmt->bindValue(12, $al->getSenha());
        $stmt->bindValue(13, $al->getId_uf());
        return $stmt->execute();
    }

    public function editar(Aluno $al) {
        $sql = "update $this->tabela set cpf=?,aluno=?,profissao=?,telefone=?,data_nasc=?,
                endereco=?,cidade=?,bairro=?,cep=?,email=?,senha=?,ativo_aluno=?,id_uf=? where
                id_aluno=?";
        $stmt = AlunoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $al->getCpf());
        $stmt->bindValue(2, $al->getAluno());
        $stmt->bindValue(3, $al->getProfissao());
        $stmt->bindValue(4, $al->getTelefone());
        $stmt->bindValue(5, $al->getData_nasc());
        $stmt->bindValue(6, $al->getEndereco());
        $stmt->bindValue(7, $al->getCidade());
        $stmt->bindValue(8, $al->getBairro());
        $stmt->bindValue(9, $al->getCep());
        $stmt->bindValue(10, $al->getEmail());
        $stmt->bindValue(11, $al->getSenha());
        $stmt->bindValue(12, $al->getAtivo_aluno());
        $stmt->bindValue(13, $al->getId_uf());
        $stmt->bindValue(14, $al->getId_aluno());
        return $stmt->execute();
    }

    public function editar_foto(Aluno $al) {
        $sql = "update $this->tabela set foto=? where id_aluno=?";
        $stmt = AlunoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $al->getFoto());
        $stmt->bindValue(2, $al->getId_aluno());
        return $stmt->execute();
    }

    public function editar_senha(Aluno $al) {
        $sql = "update $this->tabela set senha=? where id_aluno=?";
        $stmt = AlunoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $al->getSenha());
        $stmt->bindValue(2, $al->getId_aluno());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_aluno desc";
        $stmt = AlunoDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar(Aluno $al) {
        $sql = "select * from $this->tabela where id_aluno=?";
        $stmt = AlunoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $al->getId_aluno());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "select * from $this->tabela order by id_aluno desc limit $ini, $reg";
        $stmt = AlunoDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Aluno $al) {
        $sql = "delete from $this->tabela where id_aluno=?";
        $stmt = AlunoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $al->getId_aluno());
        return $stmt->execute();
    }

    public function buscar($valor) {
        $sql = "select * from $this->tabela where cpf like ? or aluno like ?";
        $stmt = AlunoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $valor);
        $stmt->bindValue(2, $valor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function logar(Aluno $al) {
        $sql = "select * from $this->tabela where email=? and senha=?";
        $stmt = AlunoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $al->getEmail());
        $stmt->bindValue(2, $al->getSenha());
        $stmt->execute();
        $result = $stmt->fetch();
        if ($result) {
            $_SESSION["logado"] = true;
            $_SESSION["id"]    = $result->id_aluno;
            $_SESSION["aluno"] = $result->aluno;
            $_SESSION["ativo"] = $result->ativo_aluno;
            return true;
        } else {
            return false;
        }
    }

    public static function deslogar() {
        if ($_SESSION["logado"]) {
            session_unset();
            //session_destroy();
            print "<script>location='login.php'</script>";
        }
    }
}