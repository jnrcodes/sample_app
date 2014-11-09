
jQuery -> # Run the body of this function in the context of jQuery

  # first, find our two tables
  materialsList = $('#materials_table')
  entryForm     = $('#entry_table')

  # Oh, and the initially-hidden <div> containing the second one
  entryDiv      = $('#enter_prices')
 
  # make the first one all fancy
  dataTable = materialsList.DataTable()

  # Add handler for our checkboxes
  $('body').on 'click', 'input:checkbox', (event) ->
  
    # which checkbox did we click?
    box  = $ event.target

    # where is it?
    tr = box.closest 'tr'
    table = tr.closest 'table'

    if table.attr('id') == 'materials_table' && box.is ':checked'
      entryForm.append tr
      dataTable.row(tr).remove().draw(false)
      tr.find('td:last-child span.price_point').show().find('input:text').focus()
    else
      tr.find('td:last-child span.price_point').hide()
      dataTable.row.add(tr.clone()).draw(false)
      tr.remove()

    do entryDiv[if entryForm.find('tr').length > 1 then 'show' else 'hide']
