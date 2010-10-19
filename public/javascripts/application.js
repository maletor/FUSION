// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function () {
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

});

