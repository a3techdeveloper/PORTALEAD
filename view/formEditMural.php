<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Mural</h2>
    </div>
</div>
<?php
include_once 'config/loader.php';
$m = new Mural();
$muralDAO = new MuralDAO();
$id_mural = filter_input(INPUT_GET, "id");

$m->setId_mural($id_mural);
$res = $muralDAO->listar($m);
?>
<form method="post" action="?link=72">
    <input type="hidden" name="id" value="<?= $id_mural ?>">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTitulo">Título</label>
            <input name="titulo" type="text" class="form-control" id="inputTitulo" placeholder="Digite o título:" value="<?= $res->titulo ?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputMsg">Mensagem</label>
            <textarea name="mensagem" class="form-control" id="inputMsg"><?= $res->mensagem ?></textarea>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputAula">Selecione a Aula</label>
            <select class="form-control" name="id_aula">
                <?php
                include_once './model/AulaDAO.class.php';
                $aulaDAO = new aulaDAO();
                foreach ($aulaDAO->listarTudo() as $aula) {
                    if ($aula->id_aula == $res->id_aula) {
                        print "<option selected value='$aula->id_aula'>Aula $aula->numero_aula: $aula->titulo_aula</option>";
                    } else {
                        print "<option value='$aula->id_aula'>Aula $aula->numero_aula: $aula->titulo_aula</option>";
                    }
                }
                ?>
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Editar" onclick="return confirm('Confirmar edição?')">
        </div>
    </div>
</form>
