// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require gritter
//= require jquery_ujs
//= require jquery.purr
//= require best_in_place
//= require turbolinks
//= require_tree .


$(function() {


  $("#tasks_search input").keyup(function() {
    $.get($("#tasks_search").attr("action"), $("#tasks_search").serialize(), null, "script");
    return false;
  });

 $(".check_box_before").click(function() {
	task_id = $(this).data("id");
	$("#checkbox-td-"+task_id).html('<input type="checkbox" name="task_ids[]" id="task_ids_" value='+task_id+'>');
	$("#delete-tasks-button").show();
	return false;
  });


});