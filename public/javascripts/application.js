$(document).ready(function() {

  $('#tools').hide();
  $('#tools').slideDown('slow');
    $('#sidebar').animate({ width: '250' }, "slow" );

  $('#aspects li').each(function(){
        $(this).find('.title').click(function(){
            $(this).parent().find('.info').slideToggle();
        });
    });


  WhiteboardUi.init($("#canvas"));
  var elem = document.getElementById('canvas');
  var context = elem.getContext('2d');
  var img = new Image();

  var pic_real_width;
  var pic_real_height;

  $(img).load(function() {
    $('#canvas').removeAttr("width").removeAttr("height").css({ width: "", height: "" }); // Remove css dimensions as well
    $('#canvas').attr("width", this.width);
    $('#canvas').attr("height", this.height);
    $('#canvas').css("left", -(this.width / 2)); 
    $('#ias_image').css("left", -(this.width / 2)); 
    context.drawImage(this, 0, 0);
  });

  img.src = source;

  });

