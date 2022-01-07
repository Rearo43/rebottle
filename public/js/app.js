'use strict';

$('.wwwButton').click(function () {
  let input = parseFloat($('#www').val());
  // console.log(input);
  let lb = input / 16;
  // console.log(lb);
  let final = lb + input;
  $(".answer").text(final);
  // console.log(input);
  // console.log(final);
});
