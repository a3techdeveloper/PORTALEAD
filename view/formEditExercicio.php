<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Exercício</h2>
    </div>
</div>
<?php
include_once './model/Exercicio.class.php';
include_once './model/ExercicioDAO.class.php';
$exercicio = new Exercicio();
$exercicioDAO = new ExercicioDAO();
$id_exercicio = filter_input(INPUT_GET, "id");

$exercicio->setId_exercicio($id_exercicio);
$res = $exercicioDAO->listar($exercicio)
?>
<form method="post" action="?link=57" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?= $id_exercicio ?>">
    <input type="hidden" name="exercicio_antigo" value="<?= $res->exercicio ?>">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTitulo">Exercício</label>
            <input name="exercicio" type="file" class="form-control" id="inputTitulo">
        </div>
        <div class="form-group col-md-6">
            <label for="inputStatus">Status Ativo</label>
            <select name="ativo_exercicio" class="form-control">
                <?php 
                if($res->ativo_exercicio == "S"){
                    print "<option value='S' selected>Sim</option>";
                    print "<option value='N'>Não</option>";
                }else{
                    print "<option value='S'>Sim</option>";
                    print "<option value='N' selected>Não</option>";
                }
                ?>
            </select>
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
