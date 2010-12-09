$(document).ready(function() {

  $('.title').click(function(){
    $(this).next('.info').slideToggle();
  });


  $('h3.ui-state-default').addClass("ui-state-hover");

  $('.graphic, span.ui-icon').hover( 
    function () {
      $(this).addClass("ui-state-hover");    
    },
    function () {
      $(this).removeClass("ui-state-hover");
    });

  $('h3.ui-state-default').hover( 
    function () {
      $(this).removeClass("ui-state-hover");    
    },
    function () {
      $(this).addClass("ui-state-hover");
    });

  $('input[type=submit], input[type=file]').button();

});

function remove_fields(link) {  
    $(link).prev("input[type=hidden]").val("1");  
    $(link).closest(".fields").hide();  
}  
  
function add_fields(link, association, content) {  
    var new_id = new Date().getTime();  
    var regexp = new RegExp("new_" + association, "g");  
    $(link).parent().before(content.replace(regexp, new_id));  
}  


$.extend($.imgAreaSelect, {
  animate: function (fx) {
             var start = fx.elem.start, end = fx.elem.end, now = fx.now,
  curX1 = Math.round(start.x1 + (end.x1 - start.x1) * now),
  curY1 = Math.round(start.y1 + (end.y1 - start.y1) * now),
  curX2 = Math.round(start.x2 + (end.x2 - start.x2) * now),
  curY2 = Math.round(start.y2 + (end.y2 - start.y2) * now);
fx.elem.ias.setSelection(curX1, curY1, curX2, curY2);
fx.elem.ias.update();
           },
  prototype: $.extend($.imgAreaSelect.prototype, {
               animateSelection: function (x1, y1, x2, y2, duration) {
                                   var fx = $.extend($('<div/>')[0], {
                                     ias: this,
                                   start: this.getSelection(),
                                   end: { x1: x1, y1: y1, x2: x2, y2: y2 }
                                   });

                                   if (!$.imgAreaSelect.fxStepDefault) {
                                     $.imgAreaSelect.fxStepDefault = $.fx.step._default;
                                     $.fx.step._default = function (fx) {
                                       return fx.elem.ias ? $.imgAreaSelect.animate(fx) :
    $.imgAreaSelect.fxStepDefault(fx);
                                     };
                                   }

                                   $(fx).animate({ cur: 1 }, duration, 'swing');
                                 }
             })
});

 var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-12479930-5']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

