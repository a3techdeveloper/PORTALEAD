<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Buscar Administradores</h2>
    </div>
</div>

<form method="get">
    <input type="hidden" name="link" value="3">
    <input type="hidden" name="acao" value="busca">
    <div class="form-row">
        <div class="form-group col-md-4">
            <input name="valor" type="text" class="form-control" id="inputValor" placeholder="Digite o nome ou sobrenome:"
                   required>
        </div>
        <div class="form-group col-md-4">
            <input type="submit" class="btn btn-secondary" value="Buscar">
        </div>
    </div>
</form>

<?php 
    if(filter_input(INPUT_GET, "acao") == "busca"){
?>
<div class="table-responsive-md">
    <table class="table">
        <thead>
            <tr class="table-info text-center">
                <th>Nome</th>
                <th>Sobrenome</th>
                <th>Email</th>
                <th>Data Cadastro</th>
                <th>Hora Cadastro</th>
                <th>Ativo</th>
            </tr>
        </thead>
        <?php
        include_once 'config/loader.php';
        $admDAO = new AdministradorDAO();
        $valor = filter_input(INPUT_GET, "valor") ? filter_input(INPUT_GET, "valor") : "";
        $valor = "%$valor%";
        foreach ($admDAO->buscar($valor) as $res) {
            ?>
            <tbody>
                <tr class="text-center">
                    <td><?= $res->nome ?></td>
                    <td><?= $res->sobrenome ?></td>
                    <td><?= $res->email ?></td>
                    <td><?= date_format(date_create($res->data_cadastro), "d/m/Y") ?></td>
                    <td><?= $res->hora_cadastro ?></td>
                    <td>
                        <?= $res->ativo_administrador == "S" ? "Sim" : "Não" ?>
                    </td>
                </tr>
            </tbody>
        <?php } ?>
    </table>
</div>
<?php
    }