// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// Escolher horarios nos formulários
$(document).ready(function() {
  $('.modal-trigger').leanModal();

  $('.datepicker').pickadate({
    monthsFull: [ 'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro' ],
    monthsShort: [ 'jan', 'fev', 'mar', 'abr', 'mai', 'jun', 'jul', 'ago', 'set', 'out', 'nov', 'dez' ],
    weekdaysFull: [ 'Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado' ],
    weekdaysShort: [ 'dom', 'seg', 'ter', 'qua', 'qui', 'sex', 'sab' ],
    today: 'Hoje',
    clear: 'Limpar',
    close: 'OK',
    format: 'd !de mmmm !de yyyy',
    formatSubmit: 'yyyy/mm/dd',
    labelMonthNext: 'Próximo',
    labelMonthPrev: 'Anterior',
    labelMonthSelect: 'Escolha um mês',
    labelYearSelect: 'Escolha um ano',
    weekdaysLetter: [ 'D', 'S', 'T', 'Q', 'Q', 'S', 'S' ]
  });

  $('.timepicker').pickatime({
    format: 'T!ime selected: h:i a',
    formatLabel: '<sp!an cl!ass="red-text">HH</sp!an>:<sp!an>i</sp!an>!h',
    formatSubmit: 'HH:i',
    clear: 'Limpar'
  });
});
