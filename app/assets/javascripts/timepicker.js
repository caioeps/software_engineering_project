// Escolher horarios nos formulários
$(document).ready(function() {

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
