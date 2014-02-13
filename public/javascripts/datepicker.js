<<<<<<< HEAD
function beforeShowDatePicker(input, inst) {
  var default_date = null;
  switch ($(input).attr("id")) {
    case "issue_start_date" :
      if ($("#issue_due_date").size() > 0) {
        default_date = $("#issue_due_date").val();
      }
      break;
    case "issue_due_date" :
      if ($("#issue_start_date").size() > 0) {
        default_date = $("#issue_start_date").val();
      }
      break;
  }
  $(input).datepicker("option", "defaultDate", default_date);
}
=======
function beforeShowDatePicker(input, inst) {
  var default_date = null;
  switch ($(input).attr("id")) {
    case "issue_start_date" :
      if ($("#issue_due_date").size() > 0) {
        default_date = $("#issue_due_date").val();
      }
      break;
    case "issue_due_date" :
      if ($("#issue_start_date").size() > 0) {
        default_date = $("#issue_start_date").val();
      }
      break;
  }
  $(input).datepicker("option", "defaultDate", default_date);
}
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
