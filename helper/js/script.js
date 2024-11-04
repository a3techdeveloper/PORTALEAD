$(document).ready(function(){
    $('#inputPreco').mask('000.000.000.000.000,00', {reverse: true});
    $('#inputDuracaoAula').mask('00:00:00', {reverse: true});
    $('#inputCPF').mask('000.000.000-00', {reverse: true});
    $('#inputFone').mask('(00) 00000-0000');
    $('#inputCEP').mask('00.000-000');
    $('#inputDuracao').mask('00:00:00', {reverse : true});
    $('#inputTel').mask('(00) 00000-0000');
});