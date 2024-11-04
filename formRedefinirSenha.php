<?php include_once 'cabecalho.php'; ?>
<!-- CABEÇALHO -->
<?php

include_once 'model/Aluno.class.php';
include_once 'model/AlunoDAO.class.php';

$al   = new Aluno();
$aDAO = new AlunoDAO();

$id_aluno = filter_input(INPUT_GET, "id");

if (filter_input(INPUT_POST, "redefinir")) {

    $senha = filter_input(INPUT_POST, "senha");
    
    $al->setSenha($senha);
    $al->setId_aluno($id_aluno);
    
    if($aDAO->editar_senha($al)){
        print "<script>alert('A sua senha foi alterada com sucesso!');location='login.php'</script>";        
    }    
}
?>
<div class="row" style="margin-top: 160px">
    <div class="offset-md-3 col-md-6">
        <h2 class="h2 text-info">Digite a sua Nova Senha</h2>
        <hr/>        
    </div>
</div>


<div class="row" id="div-form" style="margin-top: 20px; margin-bottom: 40px">
    <div class="offset-md-3 col-md-6">
        <form method="POST" action="">
            <div class="form-group">
                <label for="exampleInputSenha">Senha</label>
                <input name="senha" type="password" class="form-control" id="exampleInputSenha" placeholder="Digite a nova senha" required>
            </div>          
            <input type="submit" class="btn btn-info" value="Cadastrar" name="redefinir">
        </form>
    </div>
</div>


<!-- RODAPÉ -->
<?php
include_once 'rodape.php';
