var searchVisible = 0;
var transparent = true;

var transparentDemo = true;
var fixedTop = false;

var navbar_initialized = false;

$(document).ready(function(){
    window_width = $(window).width();
    
    // Init navigation toggle for small screens   
    if(window_width < 768){
        
    }
     
   
     
      
    $('.btn-tooltip').tooltip();
    $('.label-tooltip').tooltip();
    
    
    
    $('.form-control').on("focus", function(){
        $(this).parent('.input-group').addClass("input-group-focus");
    }).on("blur", function(){
        $(this).parent(".input-group").removeClass("input-group-focus");
    });
    
    
    
     // Make the images from the card fill the hole space
    gsdk.fitBackgroundForCards();

    
    // Init popovers 
    gsdk.initPopovers();
    
      
});

// activate collapse right menu when the windows is resized 

    
gsdk = {
    misc:{
        navbar_menu_visible: 0
    },
   
    fitBackgroundForCards: function(){
         $('.card').each(function(){
            if(!$(this).hasClass('card-product') && !$(this).hasClass('card-user')){
                image = $(this).find('.image img');
                
                image.hide();
                image_src = image.attr('src');
                
                $(this).find('.image').css({
                    "background-image": "url('" + image_src + "')",
                    "background-position": "center center",
                    "background-size": "cover"
                });
            }
        });
    },
    initPopovers: function(){
        if($('[data-toggle="popover"]').length != 0){
            $('body').append('<div class="popover-filter"></div>');
    
            //    Activate Popovers
           $('[data-toggle="popover"]').popover().on('show.bs.popover', function () {                        
                $('.popover-filter').click(function(){
                    $(this).removeClass('in');
                    $('[data-toggle="popover"]').popover('hide');         
                });
                $('.popover-filter').addClass('in');
            }).on('hide.bs.popover', function(){
                $('.popover-filter').removeClass('in');                   
            }); 
    
        }
    },
};
