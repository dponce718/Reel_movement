

    $( document ).ready(function() {
    console.log( "ready!" );
    $('.content form').validate({
  rules : {
          'assessment[rhr]' : { required : true,
                                number: true 
                         }, //END OF USERNAME
              'assessment[push_ups]' : { required : true,
                                         number: true 
                         },  // end of email
              'assessment[hamstring]' : { required : true,
                                          number: true 
                         },  // end of password 
               'assessment[planks]' : { required : true,
                                      number: true
                         },  // end of password 
               'assessment[wall_sits]' : { required : true,
                                            number: true 
                         },  // end of password           
          },//end of rules
          messages: {
      'assessment[rhr]' : { required : "Don't forget your resting heart rate",
                                number: "You need to use a numerical value"
                         }, //END OF USERNAME      
    'assessment[push_ups]': {
      required: "Dont forget to your push ups",
      number: "You need to use a numerical value"
    },// end of email
     'assessment[hamstring]': {
      required: "Please select an option",  
    },
    'assessment[planks]': {
      required: "Please select an option"
    },
      'assessment[wall_sits]': {
         required: "Please select an option"
      }
  } //end of messages
    
});// end of validation

  
       // popovers
     $(function () {
      $("#pop-1").popover('show');
      

      $('.close-btn').on('click', function () {
            $("[data-toggle = 'popover']").popover('destroy'); 
      });

       $('.tour').on('click', function () {
             $("#pop-1").popover('hide');
              $("#pop-2").popover('show');
      });

        $('body').on('click','#next',function () {
            $("#pop-2").popover('hide');
               $("#pop-3").popover('show'); 
      });

      $('body').on('click','#close-tour',function () {
            $("[data-toggle = 'popover']").popover('destroy');  
      });
    });
});
    

                   
