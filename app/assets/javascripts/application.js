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
//= require hamlcoffee
//= require underscore-min
//= require underscore-string
//= require backbone-min
//= require ./apps/content/content_app
//= require_tree ./apps/content/templates/
//= require_tree ./apps/content/helpers/
//= require_tree ./apps/content/models/
//= require_tree ./apps/content/collections/
//= require_tree ./apps/content/views/
//= require_tree ./apps/content/routers/
//= require_tree .

$(function(){ 
  Foundation.global.namespace = ''; 
  $(document).foundation(); 
});
