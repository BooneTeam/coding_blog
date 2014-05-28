// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require jquery_nested_form
//= require jquery.localScroll
//= require jquery.scrollTo


// $(function() {
//   $(document).foundation();
//   // $(document).foundation('joyride', 'start');
// });
$(document).ready(function() {
   // $('#about-nav').localScroll({duration:2000, offset:-45});


    $('.side-nav').hover(function(){
        $(this).animate({width:'150px'},500);
    },function(){
        $(this).animate({width:'30px'},500);
    }).trigger('mouseleave');

});





