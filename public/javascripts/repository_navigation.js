<<<<<<< HEAD
$(document).ready(function() {
  /* 
  If we're viewing a tag or branch, don't display it in the
  revision box
  */
  var branch_selected = $('#branch').length > 0 && $('#rev').val() == $('#branch').val();
  var tag_selected = $('#tag').length > 0 && $('#rev').val() == $('#tag').val();
  if (branch_selected || tag_selected) {
    $('#rev').val('');
  }

  /* 
  Copy the branch/tag value into the revision box, then disable
  the dropdowns before submitting the form
  */
  $('#branch,#tag').change(function() {
    $('#rev').val($(this).val());
    $('#branch,#tag').attr('disabled', true);
    $(this).parent().submit();
    $('#branch,#tag').removeAttr('disabled');
  });

  /*
  Disable the branch/tag dropdowns before submitting the revision form
  */
  $('#rev').keydown(function(e) {
    if (e.keyCode == 13) {
      $('#branch,#tag').attr('disabled', true);
      $(this).parent().submit();
      $('#branch,#tag').removeAttr('disabled');
    }
  });
})
=======
$(document).ready(function() {
  /* 
  If we're viewing a tag or branch, don't display it in the
  revision box
  */
  var branch_selected = $('#branch').length > 0 && $('#rev').val() == $('#branch').val();
  var tag_selected = $('#tag').length > 0 && $('#rev').val() == $('#tag').val();
  if (branch_selected || tag_selected) {
    $('#rev').val('');
  }

  /* 
  Copy the branch/tag value into the revision box, then disable
  the dropdowns before submitting the form
  */
  $('#branch,#tag').change(function() {
    $('#rev').val($(this).val());
    $('#branch,#tag').attr('disabled', true);
    $(this).parent().submit();
    $('#branch,#tag').removeAttr('disabled');
  });

  /*
  Disable the branch/tag dropdowns before submitting the revision form
  */
  $('#rev').keydown(function(e) {
    if (e.keyCode == 13) {
      $('#branch,#tag').attr('disabled', true);
      $(this).parent().submit();
      $('#branch,#tag').removeAttr('disabled');
    }
  });
})
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
