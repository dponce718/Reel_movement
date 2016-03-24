
   
    $(document).on("ready page:load", function() {

        $(function () {
  $('.popup-modal').magnificPopup({
    
    type: 'inline',
    preloader: false,
    focus: '#user_name',
    modal: true
  });
  $(document).on('click', '.popup-modal-dismiss', function (e) {
    e.preventDefault();
    $.magnificPopup.close();
  });
});  



        $('.stripe-form').hide();// hide stripe form
        $('#subscribe_user').hide();
         jQuery.validator.setDefaults({
    debug: false,
    success: "valid"
});;
        $('#new_user').validate({
          rules : {
             'user[name]' : { required : true,
                           minlength : 2 
                         }, //END OF USERNAME
              'user[email]' : { required : true,
                           email : true,
                           remote:"/users/check_email"
                         },  // end of email
              'user[password]' : { required : true,
                           minlength : 8
                         },  // end of password 
               'user[password_confirmation]' : { required : true,
                           equalTo : "#user_password"
                         },  // end of password 
          },//end of rules
          messages: {
    'user[name]': "Please specify your name",
    'user[email]': {
      required: "We need your email address to contact you",
      email: "Your email address must be in the format of name@domain.com",
      remote: "This email is already taken"
    },// end of email
     'user[password]': {
      required: "Please enter a password",  
    },
    'user[password_confirmation]': {
      required: "Please Re-enter your password ",
      equalTo: "Please make sure the passwords are equal"
    }
  }
        }); // end validation
$('#new_user').on('submit', function(event) {
  event.preventDefault();
   $.ajax('/users', {
    type: 'POST',
    });   
    if($(this).valid()) {
            alert('the form is valid');
            $('#new_user').remove();
            $('#subscribe_user').fadeIn(400);
        }
       }); 
  
$('.subscription form').validate({
  rules : {
             'subscription[subscribed]' : 'required'
                         
          }, //end of rules
    messages : {  
      'subscription[subscribed]'  : ' please click here to '
      }  
});


$('#subscribe_user').on('submit', function(event) {
  event.preventDefault();
   $.ajax('/static_pages', {
    type: 'POST',
    });   
    
            $('.stripe-form').fadeIn(400);
            $('#subscribe_user').fadeOut(400);
       }); 
             
}); // end ready

