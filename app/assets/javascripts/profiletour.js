  $( document ).ready(function() {
    
       // popovers
     $(function () {
      $("#welcome-pop").popover('show');

       $('.tour').on('click', function () {
            $("#pop-2-nav").popover('show'); 
            $("#welcome-pop").popover('hide');  
      });

        $('body').on('click','#next',function () {
               $(".pop-1").popover('show');
               $("#pop-2-nav").popover('hide'); 
      });

         $('body').on('click','#next-1',function () {
                $(".pop-1").popover('hide');
               $(".pop-2").popover('show'); 
      });

          $('body').on('click','#next-2',function () {
                $(".pop-2").popover('hide');
               $(".pop-3").popover('show'); 
      });

            $('body').on('click','#next-3',function () {
                $(".pop-3").popover('hide');
               $(".pop-4").popover('show'); 
      });

        $('body').on('click','#close-tour',function () {
            $(".tour-pop").popover('hide')
            $(".welcome-pop").popover('hide')  
      });

      $('.close-btn').on('click', function () {
            $("[data-toggle = 'popover']").popover('destroy') 
      });
    });
});