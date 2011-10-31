// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function () {
    if ($('#ucomments').length > 0) {
        setTimeout(updateUcomments, 10000);
    }
});

function updateUcomments() {
    $.getScript('/ucomments.js');
    setTimeout(updateUcomments, 10000);
}