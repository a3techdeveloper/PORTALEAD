<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Status Aula</h2>
    </div>
</div>
<?php
    include_once 'config/loader.php';
    $aula = new Aula();
    $aulaDAO = new AulaDAO();
    
    $id = filter_input(INPUT_GET, "id");
    $aula->setId_aula($id);
    $res = $aulaDAO->listar($aula);
?>
<form method="post" action="?link=45">
    <input type="hidden" name="id" value="<?=$id?>">
    <div class="form-row">
        <div class="form-group col-md-6 lead">
            <span class="text-info"><strong>Aula:</strong> <?=$res->numero_aula?></span> : <?=$res->titulo_aula?>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputStatus">Status Ativo?</label>
            <select class="form-control" name="ativo">
                <?php 
                    if($res->ativo_aula == "S"){
                        print "<option selected value='S'>Sim</option>";
                        print "<option value='N'>Não</option>";
                    }else{
                        print "<option value='S'>Sim</option>";
                        print "<option selected value='N'>Não</option>";
                    }
                ?>
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Mudar Status" onclick="return confirm('Confirmar edição status?')">
        </div>
    </div>
</form>