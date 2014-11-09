// this will run the body of the function in the context of jQuery
// so we can have jQuery's `$` available to us without messing
// with any other library which might be using global '$' for
// something else.
jQuery(function() {

  // first, find our two tables
  var materialsList = $('#materials_table');
  var entryForm     = $('#entry_table');

  // Oh, and the initially-hidden <div> containing the second one
  var entryDiv      = $('#enter_prices');

  // make the first one all fancy
  var dataTable = materialsList.DataTable();

  // Add handler for our checkboxes
  $('body').on('click', 'input:checkbox', function(event) {
 
    // which checkbox did we click?
    var box  = $(event.target);

    // where is it?
    var tr = box.closest('tr');
    var table = tr.closest('table');

    if (table.attr('id') == 'materials_table' && box.is(':checked')) {
      entryForm.append(tr);
      dataTable.row(tr).remove().draw(false);
      tr.find('td:last-child span.price_point').show().find('input:text').focus();
    } else {
      tr.find('td:last-child span.price_point').hide();
      dataTable.row.add(tr.clone()).draw(false);
      tr.remove();
    }

    entryDiv[entryForm.find('tr').length > 1 ? 'show' : 'hide']();
  });
});
