// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function(){

  $('.glass1').on("click", function(){
          $('.glass1').children().attr('src','assets/empty_glass.svg');
  });
  
  $('.glass2').on("click", function(){
          $('.glass2').children().attr('src','assets/empty_glass.svg');
  });
  
  $('.glass3').on("click", function(){
          $('.glass3').children().attr('src','assets/empty_glass.svg');
  });
  
  $('.glass4').on("click", function(){
          $('.glass4').children().attr('src','assets/empty_glass.svg');
  });
  
  $('.glass5').on("click", function(){
          $('.glass5').children().attr('src','assets/empty_glass.svg');
  });
  
  $('.glass6').on("click", function(){
          $('.glass6').children().attr('src','assets/empty_glass.svg');
  });
  
  $('.glass7').on("click", function(){
          $('.glass7').children().attr('src','assets/empty_glass.svg');
  });
  
  $('.glass8').on("click", function(){
          $('.glass8').children().attr('src','assets/empty_glass.svg');
  });
});