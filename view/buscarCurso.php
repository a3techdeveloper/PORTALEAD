<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Buscar Cursos</h2>
    </div>
</div>

<form method="get">
    <input type="hidden" name="link" value="28">
    <input type="hidden" name="acao" value="busca">
    <div class="form-row">
        <div class="form-group col-md-4">
            <input name="valor" type="text" class="form-control" id="inputValor" placeholder="Digite o nome do curso:"
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
                <th>Curso</th>
                <th>Duração</th>
                <th>Preço</th>
                <th>Ativo?</th>
            </tr>
        </thead>
        <?php
        include_once 'config/loader.php';
        $cursoDAO = new CursoDAO();
        $valor = filter_input(INPUT_GET, "valor") ? filter_input(INPUT_GET, "valor") : "";
        $valor = "%$valor%";
        foreach ($cursoDAO->buscar($valor) as $res) {
            ?>
            <tbody>
                <tr class="text-center">
                    <td><?= $res->curso ?></td>
                    <td><?= $res->duracao ?></td>
                    <td><?= $res->preco ?></td>
                    <td><?= $res->ativo_curso == "S" ? "Sim" : "Não" ?>
                    </td>
                </tr>
            </tbody>
        <?php } ?>
    </table>
</div>
<?php
    }