<?php
session_start();

if (isset($_SESSION["ativo"]) != "S") {
    print "<script>alert('Conta desativada, entre em contato com o administrador');location='login_adm.php'</script>";
}

if (filter_input(INPUT_GET, "sair") == "ok") {
    include_once 'model/AdministradorDAO.class.php';
    AdministradorDAO::deslogar();
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>A3Tech - Plataforma EAD</title>
        <link rel="icon" type="image/png" sizes="32x32" href="img/favicon-16x16.png">
        <link rel="icon" type="image/png" sizes="96x96" href="img/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="img/favicon-96x96.png">
        <link href="helper/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <link href="helper/css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css"/>
        <link href="helper/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="helper/css/style.css" rel="stylesheet" type="text/css"/>
        <script src="helper/js/jquery-3.5.1.js" type="text/javascript"></script>
        <script src="helper/js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="helper/js/script.js" type="text/javascript"></script>
        <script src="helper/js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="helper/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-info">
            <a class="navbar-brand" href="?link=0">EAD - A3TECH</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Administrador
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="?link=1">Inserir Administrador</a>
                            <a class="dropdown-item" href="?link=2">Listar Administrador</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=74">Listar Contato</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=3">Buscar Administrador</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Curso
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="?link=20">Inserir Curso</a>
                            <a class="dropdown-item" href="?link=22">Listar Curso</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=29">Definir Material</a>
                            <a class="dropdown-item" href="?link=31">Listar Material do Curso</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=75">Inserir Informação</a>
                            <a class="dropdown-item" href="?link=77">Listar Informação</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=87">Definir Conteúdo Programático</a>
                            <a class="dropdown-item" href="?link=89">Listar Conteúdo Programático</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=28">Buscar Curso</a>
                            <a class="dropdown-item" href="?link=35">Buscar Material</a>
                            <a class="dropdown-item" href="?link=93">Buscar Conteúdo Programático</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Aula
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="?link=39">Inserir Aula</a>
                            <a class="dropdown-item" href="?link=41">Listar Aula</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=47">Inserir Download</a>
                            <a class="dropdown-item" href="?link=49">Listar Download</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=53">Inserir Exercício</a>
                            <a class="dropdown-item" href="?link=55">Listar Exercício</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Aluno
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="?link=59">Inserir Aluno</a>
                            <a class="dropdown-item" href="?link=61">Listar Aluno</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=67">Buscar Aluno</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Mural de Avisos / Fórum
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="?link=68">Inserir Mural</a>
                            <a class="dropdown-item" href="?link=70">Listar Mural</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=81">Inserir Fórum</a>
                            <a class="dropdown-item" href="?link=83">Listar Fórum</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Tutor
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="?link=10">Inserir Tutor</a>
                            <a class="dropdown-item" href="?link=11">Listar Tutor</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=18">Definir Curso</a>
                            <a class="dropdown-item" href="?link=37">Listar Curso do Tutor</a>
                            <a class="dropdown-item" href="?link=95" onclick="return confirm('Deseja excluir vínculos tutor/curso?')">Excluir Vínculos Curso/Tutor</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="?link=19">Buscar Tutor</a>
                        </div>
                    </li>
                </ul>
                <ul class="navbar-nav mr-2">
                    <li class="nav-item active">
                        <a class="nav-link mr-sm-2" href="?sair=ok" onclick="return confirm('Deseja sair da área administrativa?')"><span class="sr-only">(current)</span>Sair</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid">
            <?php
            $link = filter_input(INPUT_GET, "link") ? filter_input(INPUT_GET, "link") : 0;

            #seção administrador
            $pag[0] = "view/principal.php";
            $pag[1] = "view/formAdm.php";
            $pag[2] = "view/listarAdm.php";
            $pag[3] = "view/buscarAdm.php";
            $pag[5] = "view/formEditAdm.php";
            $pag[7] = "view/formStatusAdm.php";

            $pag[4] = "controller/inserirAdm.php";
            $pag[6] = "controller/editarAdm.php";
            $pag[8] = "controller/editarStatusAdm.php";
            $pag[9] = "controller/excluirAdm.php";

            #seção tutor
            $pag[10] = "view/formTutor.php";
            $pag[11] = "view/listarTutor.php";
            $pag[12] = "view/formEditTutor.php";
            $pag[15] = "view/formEditFotoTutor.php";
            $pag[18] = "view/formDefinirCurso.php";
            $pag[19] = "view/buscarTutor.php";
            $pag[37] = "view/listarTutorCurso.php";

            $pag[14] = "controller/inserirTutor.php";
            $pag[13] = "controller/editarTutor.php";
            $pag[16] = "controller/editarFotoTutor.php";
            $pag[17] = "controller/excluirTutor.php";
            $pag[36] = "controller/definirTutor.php";
            $pag[38] = "controller/excluirCursoTutor.php";
            $pag[95] = "controller/excluirVinculosTutorCurso.php";

            #seção curso - material - conteúdo programático
            $pag[20] = "view/formCurso.php";
            $pag[22] = "view/listarCurso.php";
            $pag[23] = "view/formEditCurso.php";
            $pag[26] = "view/formEditImgCurso.php";
            $pag[28] = "view/buscarCurso.php";
            
            $pag[29] = "view/definirMaterial.php";
            $pag[31] = "view/listarMaterial.php";
            $pag[32] = "view/formEditMaterial.php";
            $pag[35] = "view/buscarMaterial.php";
            
            $pag[21] = "controller/inserirCurso.php";
            $pag[24] = "controller/editarCurso.php";
            $pag[27] = "controller/editarImgCurso.php";
            $pag[25] = "controller/excluirCurso.php";
            
            $pag[30] = "controller/inserirMaterial.php";
            $pag[33] = "controller/editarMaterial.php";
            $pag[34] = "controller/excluirMaterial.php";
            
            $pag[87] = "view/definirConteudo.php";
            $pag[89] = "view/listarConteudo.php";
            $pag[90] = "view/formEditConteudo.php";
            $pag[93] = "view/buscarConteudo.php";
            
            $pag[88] = "controller/inserirConteudo.php";
            $pag[91] = "controller/editarConteudo.php";
            $pag[92] = "controller/excluirConteudo.php";

            #seção aula - download - exercício
            $pag[39] = "view/formAula.php";
            $pag[41] = "view/listarAula.php";
            $pag[42] = "view/formEditAula.php";
            $pag[44] = "view/formStatusAula.php";
            
            $pag[47] = "view/formDownload.php";
            $pag[49] = "view/listarDownload.php";
            $pag[50] = "view/formEditDownload.php";

            $pag[40] = "controller/inserirAula.php";
            $pag[43] = "controller/editarAula.php";
            $pag[45] = "controller/editarStatusAula.php";
            $pag[46] = "controller/excluirAula.php";
            
            $pag[48] = "controller/inserirDownload.php";
            $pag[51] = "controller/editarDownload.php";
            $pag[52] = "controller/excluirDownload.php";

            $pag[53] = "view/formExercicio.php";
            $pag[55] = "view/listarExercicio.php";
            $pag[56] = "view/formEditExercicio.php";

            $pag[54] = "controller/inserirExercicio.php";
            $pag[57] = "controller/editarExercicio.php";
            $pag[58] = "controller/excluirExercicio.php";

            #seção aluno
            $pag[59] = "view/formAluno.php";
            $pag[61] = "view/listarAluno.php";
            $pag[62] = "view/formEditAluno.php";
            $pag[65] = "view/formEditFotoAluno.php";
            $pag[67] = "view/buscarAluno.php";

            $pag[60] = "controller/inserirAluno.php";
            $pag[63] = "controller/editarAluno.php";
            $pag[64] = "controller/excluirAluno.php";
            $pag[66] = "controller/editarFotoAluno.php";
            
            #seção mural
            $pag[68] = "view/formMural.php";
            $pag[70] = "view/listarMural.php";
            $pag[71] = "view/formEditMural.php";
            
            $pag[69] = "controller/inserirMural.php";
            $pag[72] = "controller/editarMural.php";
            $pag[73] = "controller/excluirMural.php";
            
            #seção contato
            $pag[74] = "view/listarContato.php";
            $pag[94] = "controller/excluirContato.php";
            
            #seção informação
            $pag[75] = "view/formInformacao.php";
            $pag[77] = "view/listarInformacao.php";
            $pag[78] = "view/formEditInformacao.php";
            
            $pag[76] = "controller/inserirInformacao.php";
            $pag[79] = "controller/editarInformacao.php";
            $pag[80] = "controller/excluirInformacao.php";
            
            #seção fórum
            $pag[81] = "view/formForum.php";            
            $pag[83] = "view/listarForum.php";            
            $pag[84] = "view/formEditForum.php";           
            
            $pag[82] = "controller/inserirForum.php";
            $pag[85] = "controller/editarForum.php";
            $pag[86] = "controller/excluirForum.php";


            if (file_exists($pag[$link])) {
                include_once $pag[$link];
            } else {
                print "Página não existe!";
            }
            ?>
            <div class="row"><div class="offset-md-4 col-md-4"><hr/></div></div>
            <div class="row text-center">
                <div class="col">
                    <span class="text-secondary"><strong>&COPY;Copyright 2021</strong> - Todos os direitos reservados - <strong>Brasília/DF</strong></span>
                </div>
            </div>
        </div>
    </body>
</html>