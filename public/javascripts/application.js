// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function () {
    if ($('#comments').length > 0) {
        setTimeout(updateUcomments, 10000);
    }
});

function updateUcomments() {
    var recipe_id = $('#recipe').attr('data-id');
    if ($('.comment').length > 0) {
        var after = $('.comment:last').attr('data-time');
    }
    else {
        var after = 0;
    }
    $.getScript('/ucomments.js?recipe_id=' + recipe_id + "&after=" + after);
    setTimeout(updateUcomments, 10000);
}