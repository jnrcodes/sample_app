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

    // if we're moving from the main list to the price entry form
    if (table.attr('id') == 'materials_table' && box.is(':checked')) {

      // move the row to the entry form
      entryForm.append(tr);

      // remove it from the data table and redraw without losing
      // sort, search, etc. state
      dataTable.row(tr).remove().draw(false);

      // Make the price-entry field visible
      tr.find('td:last-child span.price_point').show();
  
  } else {
      // if we're removing from the entry form, hide the price field
      tr.find('td:last-child span.price_point').hide();

      // add a copy of the row to the data table and redraw
      dataTable.row.add(tr.clone()).draw(false);

      // and remove the original row from the entry form
      tr.remove();
    }

    // if the entry form is empty, hide it; otherwise, make
    // sure it's visible
    entryDiv[entryForm.find('tr').length > 1 ? 'show' : 'hide']();
  });
});
