<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Buscar Alunos</h2>
    </div>
</div>

<form method="get">
    <input type="hidden" name="link" value="67">
    <input type="hidden" name="acao" value="busca">
    <div class="form-row">
        <div class="form-group col-md-4">
            <input name="valor" type="text" class="form-control" id="inputValor" placeholder="Digite o nome ou cpf:"
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
                <th>Nome Completo</th>
                <th>Telefone</th>
                <th>Email</th>
                <th>Status Ativo</th>
                <th>Foto</th>
            </tr>
        </thead>
        <?php
        include_once 'config/loader.php';
        $alunoDAO = new AlunoDAO();
        $valor = filter_input(INPUT_GET, "valor") ? filter_input(INPUT_GET, "valor") : "";
        $valor = "%$valor%";
        foreach ($alunoDAO->buscar($valor) as $res) {
            ?>
            <tbody>
                <tr class="text-center">
                    <td><?= $res->aluno ?></td>
                    <td><?= $res->telefone ?></td>
                    <td><?= $res->email ?></td>
                    <td><?= ($res->ativo_aluno == "S") ? "Sim" : "Não"; ?></td>
                    <td><img class="img-thumbnail" src="<?='img/aluno/'.$res->foto?>" alt="Foto Aluno" width="80"></td>
                </tr>
            </tbody>
        <?php } ?>
    </table>
</div>
<?php
    }