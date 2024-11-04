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
        <script src="helper/js/bootstrap.bundle.min.js" type="text/javascript"></script>        
        <script src="helper/js/bootstrap.min.js" type="text/javascript"></script>        
        <script src="helper/js/script.js" type="text/javascript"></script>    
    </head>    
    <body style="background-color:#cfcfcf">        
        <div class="container-fluid" id="container-principal">            
            <div class="row" id="div-topo">                
                <div class="col"></div>            
            </div>            
            <div class="row align-items-center" id="div-logo">                
                <div class="col">                    
                    <img class="img-fluid mx-auto d-block" src="img/logo_sem_fundo_2.png" alt="Responsive image" width="40px">                
                </div>            
            </div>            
            <div class="row" id="div-form">                
                <div class="offset-md-4 col-md-4">                    
                    <form method="post" action="controller/logarADM.php">                        
                        <div class="form-group">                            
                            <label for="exampleInputEmail">Email</label>                            
                            <input name="email" type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Digite o email">                        
                        </div>                        
                        <div class="form-group">                            
                            <label for="exampleInputPassword">Senha</label>                            
                            <input name="senha" type="password" class="form-control" id="exampleInputPassword" placeholder="Digite a senha">                        
                        </div>                        
                        <button type="submit" class="btn btn-secondary">Entrar</button>                    
                    </form>                
                </div>            
            </div>            
            <hr/>            
            <div class="row text-center">                
                <div class="col">                    
                    <span class="text-secondary"><strong>&COPY;Copyright 2021</strong> - Todos os direitos reservados - <strong>Brasília/DF</strong></span>                
                </div>            
            </div>            
            <hr/>        
        </div>    
    </body>
    </html>