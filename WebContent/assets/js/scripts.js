
$(document).ready(function(){/* jQuery toggle layout */
	$('#btnToggle').click(function(){
	  if ($(this).hasClass('on')) {
	    $('#main .col-sm-6').addClass('col-sm-4').removeClass('col-sm-6');
	    $(this).removeClass('on');
	  }
	  else {
	    $('#main .col-sm-4').addClass('col-sm-6').removeClass('col-sm-4');
	    $(this).addClass('on');
	  }
	});
});

var mySlider = $("input.slider").slider();