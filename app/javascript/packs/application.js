// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).ready(function() {
  var orderType = $('#pedido_forma_pagamento');

  if (orderType.length > 0) {
    orderType.change(function() {
      $('#money-fields').removeClass('d-none');
      $('#credit-card-fields').removeClass('d-none');

      if ($(this).val() === '1') {
        $('#credit-card-fields').addClass('d-none');
      } else {
        $('#money-fields').addClass('d-none');
      }
    });
  }

  var placeOrder = $('#place-order');

  if (placeOrder.length > 0) {
    placeOrder.on('click', function(e) {
      e.preventDefault();
      var valid = true,
          creditCardNumber = $('#credit-card-number');

      if ($('#pedido_forma_pagamento').val() === '0') {
        creditCardNumber.removeClass('invalid');

        if (creditCardNumber.val() === '') {
          creditCardNumber.addClass('invalid');
          valid = false;
        }
      }

      if (valid) {
        $(this).parents('form').submit();
      }
    });
  }
});
