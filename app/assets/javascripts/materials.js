jQuery(function(){
 $('#materials').dataTable();
 Array.prototype.forEach.call(
   Array.prototype.filter.call(document.getElementsByTagName('input'), 
    function(input){return input.type=="checkbox"}), 
  function(cb) {
   cb.onclick = function(){alert("Boop!");};
  })
})

