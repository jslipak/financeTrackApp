// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
    // BUG: Fix a Problem with jquery close messages  
    // Uncomment to copy all static images under ../images to the output folder and reference
    // them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
    // or the `imagePath` JavaScript helper below.
    //
    // const images = require.context('../images', true)
    // const imagePath = (name) => images(name, true)
    //= require rails-ujs
    //= require jquery
    //= require twitter/bootstrap
    //= require_tree .
    // ISSUE: it's doesn't work the selectors
    // document.addEventListener("DOMContentLoaded", function() {
    //     $('button.close').on('click', function() {
    //         console.log('hola Mundo');
    //     })
    // })

$(document).ready(function() {
    $('.close').click(function() {
            $('.alert').removeClass('in').addClass('out')
        })
        // $('#stock-lookup-form').on('ajax:complete', function(event, data, status) {
        //     console.log(data);
        //     $('#results').html(data.responseText);
        // })
})