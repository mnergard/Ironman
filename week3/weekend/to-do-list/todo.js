
window.onload = function() {

// the following code adds event listeners to the buttons
// you'll learn more about this later
// for this exercise, you are going to write the functions for
// what happens when the user clicks on the buttons.
  var saveButton = document.getElementById('save-button');
  saveButton.addEventListener('click', addToDoItem, false);

  var doneButton = document.getElementById('done-button');
  doneButton.addEventListener('click', markAsDone, false);

  var remove = document.getElementById('remove');
  remove.addEventListener('click', removeOne, false);

  var emptyButton = document.getElementById('empty');
  emptyButton.addEventListener('click', removeAll, false);

  // function removeAll() {
  //     var toDoList = document.getElementsByClassName('todo-list-items')[0];
  //     var listobject = toDoList.getElementsByTagName('li')[0];
  //     while (listobject) {
  //       toDoList.removeChild(listobject);
  //     }
   
  // }

// function removeAll() {
//     var toDoList = document.getElementsByClassName('todo-list-items')[0];
//     var i = 0;
//     var listObjects = toDoList.getElementsByTagName('li');
//     while (i<listObjects.length) {
//        var listobject = listObjects[i];
//        toDoList.removeChild(listobject);
//        i++;
//     }
 
// }

function removeAll() {
   var toDoList = document.getElementsByClassName('todo-list-items')[0];
   toDoList.html = ""
}
  // function removeAll() {
  //     var myNode = document.getElementById("lister");
  //     while (myNode.firstChild) {
  //       myNode.removeChild(myNode.firstChild);
  //     }
  // }
  function removeOne() {
      var toDoList = document.getElementsByClassName('todo-list-items')[0];
      var removeList = toDoList.getElementsByTagName('li')[0];
      toDoList.removeChild(removeList);
  } 

  function addToDoItem() {
      var formContents = document.getElementById('todo-input').value;
      var newToDoItemContents = document.createTextNode(formContents);
      var newToDoItem = document.createElement('li');
      var toDoList = document.getElementsByClassName('todo-list-items')[0];
      var firstLiItem = toDoList.getElementsByTagName('li')[0];
      newToDoItem.appendChild(newToDoItemContents);
      toDoList.insertBefore(newToDoItem, firstLiItem);
  }
  function markAsDone() {
      var toDoList = document.getElementsByClassName('todo-list-items')[0];
      var doneList = document.getElementsByClassName('done-list-items')[0];
      var removedItem = toDoList.getElementsByTagName('li')[0];
      var firstDoneLiItem = doneList.getElementsByClassName('done')[0];
      toDoList.removeChild(removedItem);
      removedItem.className = "done";
      doneList.insertBefore(removedItem, firstDoneLiItem); 
  }
  }
























    
