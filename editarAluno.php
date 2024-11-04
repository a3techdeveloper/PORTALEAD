<?php include_once 'cabecalho.php'; ?>
<!-- CABEÇALHO -->

<div class="container-fluid">
    <div class="row" style="margin-top: 100px">
        <div class="col">
            <h2 class="text-secondary text-center">Editar Aluno</h2>
        </div>
    </div>
</div>
<?php 
include_once 'model/Aluno.class.php';
include_once 'model/AlunoDAO.class.php';

if (isset($_SESSION["logado"]) != true) {
    print "<script>alert('Sem permissão de acesso, efetue o login');location='login.php'</script>";
}

$al = new Aluno();
$alunoDAO = new AlunoDAO();
$id_aluno = filter_input(INPUT_GET, "id");

$al->setId_aluno($id_aluno);
$res = $alunoDAO->listar($al);
?>
<form method="post" action="controller/editarAlunoPage.php">
    <div class="form-row">
        <input type="hidden" name="id" value="<?= $res->id_aluno ?>">
        <input type="hidden" name="ativo_aluno" value="<?= $res->ativo_aluno ?>">
        <input type="hidden" name="senha" value="<?= $res->senha ?>">
        <div class="form-group col-md-6">
            <label for="inputCPF">CPF</label>
            <input name="cpf" type="text" class="form-control" id="inputCPF" placeholder="Digite o CPF:" value="<?= $res->cpf ?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputAluno">Nome Completo</label>
            <input name="aluno" type="text" class="form-control" id="inputAluno" placeholder="Digite o Nome Completo:" value="<?= $res->aluno ?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputProfissao">Profissão</label>
            <input name="profissao" type="text" class="form-control" id="inputProfissao" placeholder="Digite a sua Profissão:" value="<?= $res->profissao ?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputFone">Telefone Móvel</label>
            <input name="telefone" type="tel" class="form-control" id="inputFone" placeholder="Digite o DDD e Telefone (apenas dígitos):" value="<?= $res->telefone ?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputDataNasc">Data Nascimento</label>
            <input name="data_nasc" type="date" class="form-control" id="inputDataNasc" value="<?= $res->data_nasc ?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputEndereco">Endereço</label>
            <input name="endereco" type="text" class="form-control" id="inputEndereco" placeholder="Digite o seu endereço:" value="<?= $res->endereco ?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCidade">Cidade</label>
            <input name="cidade" type="text" class="form-control" id="inputCidade" placeholder="Digite sua cidade:" value="<?= $res->cidade ?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputBairro">Bairro</label>
            <input name="bairro" type="text" class="form-control" id="inputBairro" placeholder="Digite seu bairro:" value="<?= $res->bairro ?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputUF">U.F.</label>
            <select name="id_uf" class="form-control">
                <?php
                include_once 'model/UFDAO.class.php';
                $ufDAO = new UFDAO();
                foreach ($ufDAO->listarTudo() as $uf) {
                    $descricao = $uf->descricao;
                    if ($uf->id_uf == $res->id_uf) {
                        print "<option value='$uf->id_uf' selected>$descricao</option>";
                    } else {
                        print "<option value='$uf->id_uf'>$descricao</option>";
                    }
                }
                ?>
            </select>
        </div>
        <div class="form-group col-md-6">
            <label for="inputCEP">CEP</label>
            <input name="cep" type="text" class="form-control" id="inputCEP" placeholder="Digite seu CEP:" value="<?= $res->cep ?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputMail">Email</label>
            <input name="email" type="email" class="form-control" id="inputMail" placeholder="Digite o email:" value="<?= $res->email ?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Editar" onclick="return confirm('Confirmar edição?')">
        </div>
    </div>
</form>


<!-- RODAPÉ -->
<?php
include_once 'rodape.php';
