// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require tether
//= require bootstrap-sprockets
//= require bootstrap
//= require_tree .
//= require jquery.turbolinks
//= require chosen-jquery
//= require messages
//= require modernizr.custom
//= require books2

$(document).ready(
    function(){
        function set_cookie ( name, value, exp_y, exp_m, exp_d, path, domain, secure ){
            var cookie_string = name + "=" + escape ( value );
         
            if ( exp_y ){
                var expires = new Date ( exp_y, exp_m, exp_d );
                cookie_string += "; expires=" + expires.toGMTString();
            }
         
            if ( path )
                cookie_string += "; path=" + escape ( path );
         
            if ( domain )
                cookie_string += "; domain=" + escape ( domain );
          
            if ( secure )
                cookie_string += "; secure";
          
            document.cookie = cookie_string;
        }
        function delete_cookie ( cookie_name ){
            var cookie_date = new Date ( );  // Текущая дата и время
            cookie_date.setTime ( cookie_date.getTime() - 1 );
            document.cookie = cookie_name += "=; expires=" + cookie_date.toGMTString();
        }
        function get_cookie ( cookie_name ){
            var results = document.cookie.match ( '(^|;) ?' + cookie_name + '=([^;]*)(;|$)' );
 
            if ( results )
                return ( unescape ( results[2] ) );
            else
                return null;
        }
        function scroll_fn(){
            document_height = $(document).height();
            scroll_so_far = $(window).scrollTop();
            window_height = $(window).height();  
            max_scroll = document_height-window_height;
            scroll_percentage = scroll_so_far/(max_scroll/100);
            $('#loading').width(scroll_percentage + '%');
        }
        $(window).scroll(function() {
            scroll_fn();
        });
        $(window).resize(function() {
            scroll_fn();
        });
    }
);