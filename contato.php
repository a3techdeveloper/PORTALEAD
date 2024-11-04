<?php include_once 'cabecalho.php'; ?>
<!-- CABEÇALHO -->

<div class="row" style="margin-top: 120px">
    <div class="offset-md-2 col-md-8">
        <h2 class="h2 text-secondary">Fale Conosco</h2>
        <hr/>
        <span class="lead text-dark">Em caso de dúvidas, fale conosco</span>
        <hr/>
    </div>
    <div class="offset-md-2 col-md-8">
        <span class="lead text-muted" style="font-size: 14pt">Email: <strong>a3tech.ead@gmail.com</span><br/>
        <span class="lead text-muted" style="font-size: 14pt">Whatsapp: <strong>(79) 99831-8862</strong></span>
        <hr/>
    </div>
</div>
<div class="row" id="div-form" style="margin-top: 10px; margin-bottom: 40px">
    <div class="offset-md-4 col-md-4">
        <form method="post" action="controller/inserirContato.php">
            <div class="form-group">
                <label for="InputEmail">Nome Completo</label>
                <input name="nome" type="text" class="form-control" id="InputEmail" placeholder="Digite o seu nome">
            </div>
            <div class="form-group">
                <label for="InputEmail">Email</label>
                <input name="email" type="email" class="form-control" id="InputEmail" placeholder="Digite o seu email">
            </div>
            <div class="form-group">
                <label for="inputFone">Telefone (Whatsapp)</label>
                <input name="fone" type="text" class="form-control" id="inputFone" placeholder="Digite o DDD e Telefone (Somente dígitos):">
            </div>
            <div class="form-group">
                <label for="inputMensagem">Deixe sua Mensagem</label>
                <textarea name="mensagem" class="form-control" id="inputMensagem"></textarea>
            </div>
            <button type="submit" class="btn btn-dark">Enviar</button>
        </form>
    </div>
</div>

<!-- RODAPÉ -->
<?php include_once 'rodape.php';
