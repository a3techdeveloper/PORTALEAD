<?php include_once 'cabecalho.php'; ?>
<!-- CABEÇALHO -->

<div class="row" style="margin-top: 160px">
    <div class="offset-md-4 col-md-4">
        <h2 class="h2 text-secondary">Efetue o Login</h2>
        <hr/>
    </div>
</div>
<div class="row" id="div-form" style="margin-top: 20px; margin-bottom: 40px">
    <div class="offset-md-4 col-md-4">
        <form method="post" action="controller/logar.php">
            <div class="form-group">
                <label for="exampleInputEmail">Email</label>
                <input name="email" type="email" class="form-control" id="exampleInputEmail" placeholder="Digite o email">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword">Senha</label>
                <input name="senha" type="password" class="form-control" id="exampleInputPassword" placeholder="Digite a senha">
            </div>
            <button type="submit" class="btn btn-dark">Entrar</button>
            <hr>
            <a href="formEsqueceuSenha.php">Esqueceu a senha?</a>
        </form>
    </div>
</div>

<!-- RODAPÉ -->
<?php include_once 'rodape.php';
