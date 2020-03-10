// This file may be used for providing additional customizations to the Trestle
// admin. It will be automatically included within all admin pages.
//
// For organizational purposes, you may wish to define your customizations
// within individual partials and `require` them here.
//
//  e.g. //= require "trestle/custom/my_custom_js"

$(function() {
  $("#article_tag_list").select2({
    theme: 'bootstrap',
    allowClear: true,
    minimumInputLength: 2,
    containerCssClass: ':all:',
    dataType: 'json',
    ajax: {
      url: '/admin/articles/tags',
      delay: 250,
      data: function(params) {
        return { q: params.term }
      },
      processResults: function (data, params) {
        return {
          results: $.map(data, function(value, index){
            return {id: value.id, text: value.text };
          })
        };
        cache: true
      }
    }
  });
});