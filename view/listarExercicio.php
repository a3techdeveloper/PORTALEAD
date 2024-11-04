<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Listar Exercicios</h2>
    </div>
</div>

<div class="table-responsive-md">
    <table class="table">
        <thead>
            <tr class="table-dark text-center">
                <th>Exercício</th>
                <th>Aula</th>
                <th>Data</th>
                <th>Status Ativo</th>
                <th>#</th>
            </tr>
        </thead>
        <?php
        include_once './model/ExercicioDAO.class.php';
        $exercicioDAO = new ExercicioDAO();
        $pag = filter_input(INPUT_GET, "pag") ? filter_input(INPUT_GET, "pag") : 1;
        $_SESSION["pag"] = $pag;
        $result = $exercicioDAO->listarTudo();
        $totalRegistros = count($result);
        $reg = 5;
        $ini = ($reg * $pag) - $reg;
        $numPaginas = ceil($totalRegistros / $reg);
        $maxPaginas = 3;
        foreach ($exercicioDAO->paginar($ini, $reg) as $res) {
            ?>
            <tbody>
                <tr class="text-center">
                    <td><?= $res->exercicio ?></td>
                    <td>
                        <?php
                        include_once './model/AulaDAO.class.php';
                        $aulaDao = new aulaDAO();
                        foreach ($aulaDao->listarTudo() as $aula) {
                            if ($aula->id_aula == $res->id_aula) {
                                print "Aula $aula->numero_aula: $aula->titulo_aula";
                            }
                        }
                        ?>                
                    </td>
                    <td><?= date_format(date_create($res->data_publicacao), "d/m/Y") ?></td>
                    <td>
                        <?php
                        print ($res->ativo_exercicio == "S") ? "Sim" : "Não";
                        ?>
                    </td>
                    <td>
                        <a href="?link=56&id=<?= $res->id_exercicio ?>">
                            <button class="btn btn-dark">
                                Editar
                            </button></a>


                        <a href="?link=58&exercicio=<?= $res->exercicio ?>&id=<?= $res->id_exercicio ?>" onclick="return confirm('Confirmar exclusão?')">
                            <button class="btn btn-danger">
                                Excluir
                            </button></a>

                    </td>
                </tr>
            </tbody>
        <?php } ?>
    </table>
</div>

<div class="row">
    <div class="col-md-12">
        <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="?link=55&pag=1" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <?php
                for ($i = $pag - $maxPaginas; $i <= $pag - 1; $i++) {
                    if ($i >= 1) {
                        print "<li class='page-item'><a class='page-link' href='?link=55&pag=$i'>$i</a></li>";
                    }
                }
                echo "<li class='page-item active'><a class='page-link' href='?link=55&pag=$pag'>$pag<span class='sr-only'>(current)</span></a></li>";
                for ($i = $pag + 1; $i <= $pag + $maxPaginas; $i++) {
                    if ($i <= $numPaginas) {
                        print "<li class='page-item'><a class='page-link' href='?link=55&pag=$i'>$i</a></li>";
                    }
                }
                ?>
                <li class="page-item">
                    <a class="page-link" href="?link=55&pag=<?= $numPaginas ?>">
                        <span aria-hidden="true">&raquo;</span>
                    </a> 
                </li>
            </ul>
        </nav>
    </div>
</div>