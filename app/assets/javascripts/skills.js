(function() {
   function expandMaterialTypes(li, skillName) {
     var a = li.firstChild
     a.innerHTML = '▼';
     a.onclick = function() { collapseMaterialTypes(li, skillName); }
   }
   function collapseMaterialTypes(li, skillName) {
     var a = li.firstChild;
     a.innerHTML = '▶';
     a.onclick = function() { expandMaterialTypes(li, skillName); }
   }
   function setupCascade() {
     var listItems = document.getElementsByTagName('li');
     Array.prototype.forEach.call(listItems, function(li) {
       var skillName = li.innerHTML
       var a = document.createElement('a');
       a.innerHTML = '▶';
       li.insertBefore(a, li.firstChild);
       a.onclick = function() { expandMaterialTypes(li, skillName) }
     })
   }
   window.onload = setupCascade;
})();
