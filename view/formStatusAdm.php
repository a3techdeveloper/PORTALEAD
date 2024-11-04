<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Status Administrador</h2>
    </div>
</div>
<?php
    include_once 'config/loader.php';
    $adm = new Administrador();
    $admDAO = new AdministradorDAO();
    
    $id = filter_input(INPUT_GET, "id");
    $adm->setId_administrador($id);
    $res = $admDAO->listar($adm);
?>
<form method="post" action="?link=8">
    <input type="hidden" name="id" value="<?=$id?>">
    <div class="form-row">
        <div class="form-group col-md-6 lead">
            <strong>Administrador(a):</strong> <?=$res->nome?> <?=$res->sobrenome?>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputStatus">Status Ativo?</label>
            <select class="form-control" name="ativo">
                <?php 
                    if($res->ativo_administrador == "S"){
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