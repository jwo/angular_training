//= require_self
//= require_tree ./angular

AngulaRails = angular.module("AngulaRails", ["ngResource"]);

$(function() {
  $('input[type="text"][ng-model]').each( function() {
    var that = this;
    setTimeout(function() {
      value = $(that).val();
      angular.element(that).controller('ngModel').$setViewValue(value);
    }, 150);    
  });  
})
