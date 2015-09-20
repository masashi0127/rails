$(function() {
  var $draggingElement = null;
  var $positionElement = null;

  function handleDragStart(e) {
    $draggingElement = $(this);
  }

  function handleDragEnter(e) {
    $positionElement = $(this);
  }

  function handleDragOver(e) {
    if (e.preventDefault) {
      e.preventDefault();
    }
    e.dataTransfer.dropEffect = 'move';
  }

  function handleDragLeave(e) {
    $(this).prev('.dragging').remove();
  }

  function handleDragEnd(e) {
    $draggingElement.insertAfter($positionElement);
  }

  var items = document.querySelectorAll('.task-list__item');
  [].forEach.call(items, function(item) {
    item.addEventListener('dragstart', handleDragStart, false);
    item.addEventListener('dragenter', handleDragEnter, false);
    item.addEventListener('dragover', handleDragOver, false);
    item.addEventListener('dragleave', handleDragLeave, false);
    item.addEventListener('dragend', handleDragEnd, false);
  });
});
