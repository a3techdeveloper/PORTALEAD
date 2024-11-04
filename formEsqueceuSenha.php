<?php include_once 'cabecalho.php'; ?>
<!-- CABEÇALHO -->

<div class="row" style="margin-top: 160px">
    <div class="offset-md-4 col-md-4">
        <h2 class="h2 text-info">Redefinir Senha</h2>
        <hr/>
    </div>
</div>

<div class="row" id="div-form" style="margin-top: 20px; margin-bottom: 40px">
    <div class="offset-md-4 col-md-4">
        <form method="post" action="controller/redefinirSenha.php">
            <label>
                <p>Informe o e-mail para o qual deseja redefinir a sua senha</p>
            </label>
            <div class="form-group">
                <label for="exampleInputEmail">Email</label>
                <input name="email" type="email" class="form-control" id="exampleInputEmail" placeholder="Digite o email">
            </div>            
            <button type="submit" class="btn btn-info">Enviar</button>
        </form>
    </div>
</div>



<!-- RODAPÉ -->
<?php include_once 'rodape.php';