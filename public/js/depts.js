$(document).ready(function () {
  // Getting a reference to the input field where user adds a new todo
  var $newItemInput = $("input.new-item");
  // Our new todos will go inside the todoContainer
  var $deptContainer = $(".dept-container");

  const $newDeptForSubDeptInput = $("#deptDropdown");
  // Adding event listeners for deleting, editing, and adding todos
  // $(document).on("click", "button.delete", deleteDept);
  // $(document).on("click", "button.complete", toggleComplete);
  $(document).on("click", ".dept-item", editDept);
  $(document).on("keyup", ".dept-item", finishEdit);
  $(document).on("blur", ".dept-item", cancelEdit);
  $(document).on("submit", "#dept-form", insertDept);

  //still must add same functionality for subDepts list, plus making forDept dropdown list

  // Our initial todos array
  var depts = [];

  // Getting depts from database when page loads
  getDepts();

  // This function resets the depts displayed with new depts from the database, and populates the deptDropdown
  function initializeRows() {
    $deptContainer.empty();
    $newDeptForSubDeptInput.empty();
    var rowsToAdd = [];
    for (var i = 0; i < depts.length; i++) {
      rowsToAdd.push(createNewRow(depts[i]));

      // deal with deptDropdown
      $newDeptForSubDeptInput.append("<option>" + depts[i].dept + "</option>");
    }
    $deptContainer.prepend(rowsToAdd);
  }

  // This function grabs depts from the database and updates the view
  function getDepts() {
    $.get("/api/depts", function (data) {
      depts = data;
      initializeRows();
    });
  }

  // This function deletes a todo when the user clicks the delete button
  // function deleteDept(event) {
  //   event.stopPropagation();
  //   var id = $(this).data("id");
  //   $.ajax({
  //     method: "DELETE",
  //     url: "/api/depts/" + id,
  //   }).then(getDepts);
  // }

  // This function handles showing the input box for a user to edit a dept
  function editDept() {
    var currentDept = $(this).data("dept");
    $(this).children().hide();
    $(this).children("input.edit").val(currentDept.dept);
    $(this).children("input.edit").show();
    $(this).children("input.edit").focus();
  }

  // Toggles complete status
  // function toggleComplete(event) {
  //   event.stopPropagation();
  //   var dept = $(this).parent().data("dept");
  //   dept.complete = !dept.complete;
  //   updateDept(dept);
  // }

  // This function starts updating a dept in the database if a user hits the "Enter Key"
  // While in edit mode
  function finishEdit(event) {
    var updatedDept = $(this).data("dept");
    if (event.which === 13) {
      updatedDept.text = $(this).children("input").val().trim();
      $(this).blur();
      updateDept(updatedDept);
    }
  }

  // This function updates a dept in our database
  function updateDept(dept) {
    $.ajax({
      method: "PUT",
      url: "/api/dept",
      data: dept,
    }).then(getDept);
  }

  // This function is called whenever a todo item is in edit mode and loses focus
  // This cancels any edits being made
  function cancelEdit() {
    var currentDept = $(this).data("dept");
    if (currentDept) {
      $(this).children().hide();
      $(this).children("input.edit").val(currentDept.text);
      $(this).children("span").show();
      $(this).children("button").show();
    }
  }

  // This function constructs a dept row
  function createNewRow(deptInfo) {
    // console.log(deptInfo);
    var $newInputRow = $(
      [
        "<li class='list-group-item dept-item'>",
        "<span>",
        deptInfo.dept,
        "</span>",
        "<input type='text' class='edit' style='display: none;'>",
        // "<button class='delete btn btn-danger'>x</button>",
        "</li>",
      ].join("")
    );

    $newInputRow.find("button.delete").data("id", deptInfo.id);
    $newInputRow.find("input.edit").css("display", "none");
    $newInputRow.data("dept", deptInfo);

    return $newInputRow;
  }

  // This function inserts a new dept into our database and then updates the view
  function insertDept(event) {
    event.preventDefault();
    var dept = {
      dept: $newItemInput.val().trim(),
    };

    $.post("/api/depts", dept, getDepts);
    $newItemInput.val("");
  }
});
