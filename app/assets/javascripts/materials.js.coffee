
jQuery -> # Run the body of this function in the context of jQuery

  # first, find our two tables
  materialsList = $('#materials_table')
  entryForm     = $('#entry_table')
  entryDiv      = entryForm.parent
 
  # make the first one all fancy
  dataTable = materialsList.DataTable()

  # Add handler for our checkboxes
  $('body').on('click', 'input:checkbox', (event) ->
  
    # which checkbox did we click?
    box  = event.target

    # where is it?
    cell  = box.parent
    row   = cell.parent
    tbody = row.parent
    table = tbody.parent

    alert "tbody is " + tbody + "; table is " + table
###
    if (from.id == 'materials' && checkbox.checked) {
        to = entryForm;
    } else {
        to = materialsList
} //console.log(to)
to.appendChild(tr);
var i, found = false;
for (i=0; i<entryForm.childNodes.length; ++i) {
if (entryForm.childNodes[i].tagName == 'TR') {
        found = true;
        break;
      }
    }
    if (found) {
       entryDiv.style.display = 'block';
    } else { 
       entryDiv.style.display = 'none';
    }
  } );
###
