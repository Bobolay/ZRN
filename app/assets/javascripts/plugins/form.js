$(document).ready(function() {
  
  //     c u s t o m     l a b e l s

  $('input').blur(function() {
    var $this = $(this);
    if ($this.val())
      $this.addClass('used');
    else
      $this.removeClass('used');
  });
  $('textarea').blur(function() {
    var $this = $(this);
    if ($this.val())
      $this.addClass('used');
    else
      $this.removeClass('used');
  });

  $(".accept-icon").on("click", function(){
    $(".checked").toggleClass("active")
  });


  //     v a l i d a t e

  // $("form").validate({
  //   rules: {
  //     name: {
  //       required: true,
  //       minlength: 3
  //     },
  //     email: {
  //       required: true,
  //       email: true
  //     }
  //   }
  // });

  //     c u s t o m     s e l e c t
  
  $('select').niceSelect();

});