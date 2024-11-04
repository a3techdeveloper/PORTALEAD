<?php session_start(); ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>A3TECH - Plataforma de Ensino</title>
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
    <body style="background-color:#cfcfcf">
        <div class="container">
            <div class="row">
                <div class="col">
                    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
                        <a class="navbar-brand" href="#"><img class="img-fluid img-thumbnail" src="img/logo_sem_fundo.png" width="180px"> Ensino à Distância com Qualidade</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <span style="font-size: 15pt"><a class="nav-link" href="index.php">Início <span class="sr-only">(página atual)</span></a></span>
                                </li>
                                <li class="nav-item">
                                    <span style="font-size: 15pt"><a class="nav-link" href="cursos.php">Cursos</a></span>
                                </li>                               
                                <li class="nav-item">
                                    <?php 
                                    
                                    if(isset($_SESSION["logado"]) != true){
                                    ?>
                                    <span style="font-size: 15pt"><a class="nav-link" href="inscrever.php">Inscrever-se</a></span>
                                    <?php 
                                    }else{
                                    ?>
                                    <span style="font-size: 15pt"><a class="nav-link" href="painel.php">Painel</a></span>
                                    <?php } ?>
                                </li>                                   
                                <li class="nav-item">
                                    <span style="font-size: 15pt"><a class="nav-link" href="contato.php">Contato</a></span>
                                </li>                                
                                <li class="nav-item active">
                                    <?php 
                                    if(filter_input(INPUT_GET, "sair") == "ok"){
                                        include_once 'model/AlunoDAO.class.php';
                                        AlunoDAO::deslogar();
                                    }
                                    if(isset($_SESSION["logado"]) != true){
                                    ?>
                                    <span style="font-size: 15pt"><a class="nav-link" href="login.php">Entrar<span class="sr-only">(página atual)</span></a></span>
                                    <?php 
                                    }else{
                                    ?>
                                    <span style="font-size: 15pt"><a class="nav-link" href="?sair=ok" onclick="return confirm('Deseja sair da plataforma?')">Sair<span class="sr-only">(página atual)</span></a></span>
                                    <?php } ?>
                                </li>                                
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>