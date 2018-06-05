var app = {
	application : null,
	icon        : null,
	update      : null,
	app_panel   : '.app-panel',
	app_hdIcon  : '.hd-icon',
	app_hdName  : '.hd-name',
	app_contents: '#app-contents',
	appInit     : function(appName){
		$(app.app_contents).contents().find('html').empty();
		if (app.application === appName){
			if(!$(app.app_panel).hasClass("de-none")){
				app.animate('close');
				return false;			
			}
		}
		app.animate('loader');
		return true;
	},
	evtInit     : function(){
		$('.app').on('click', function(obj) {
			var appName = $(obj.currentTarget).find('p')[0].textContent;
			var appIcon = $(obj.currentTarget).find('i')[0].className;
			if(app.appInit(appName)){
				app.application = appName;
				app.icon = appIcon;
				appIcon = appIcon.replace('fa-5x', 'fa-2x').replace('d-block ', '');
				$(app.app_hdIcon).removeClass().addClass("hd-icon " + appIcon);
				$(app.app_hdName).text(app.application);
				app.animate('open');				
			}
		});		
	},
	opnerApp    : function(){
	
	},
	closeInit   : function(){
		$('.pointer').on('click', function() {
			app.animate('close');
		})		
	},
	animate : function(action){
		if (action === 'open')
			$(app.app_panel).animate({  
				top : "0%"
			}, {
				duration : 500,
				queue : true,
				start : function() {
					$(app.app_panel).removeClass('de-none');
				},
				done : function(){
					app.open();
				}
			
			});
		if (action === 'close')
			$(app.app_panel).animate({top : "100%"}, {duration : 500,queue : true,done:function(){$(app.app_panel).addClass('de-none');}});
		if (action === 'loader')
			$('.lod').addClass('loader');
	},
	open : function(){
		$(app.app_contents).attr('src','/App?hd-name='+app.application);
	}
};

$(function() {
	date_Init();
	app.evtInit();
	app.closeInit();
})

function onFrameComplate(){
	$('.lod').removeClass('loader');
}

function date_Init() {
	var date = new Date(
			$('input[type="hidden"]')[0].value, 
			$('input[type="hidden"]')[1].value, 
			$('input[type="hidden"]')[2].value, 
			$('input[type="hidden"]')[3].value,
			$('input[type="hidden"]')[4].value, 
			$('input[type="hidden"]')[5].value);
	var hour = date.getHours(), min = date.getMinutes(), sec = date.getSeconds(), h24 = convert12H(date.getHours(), {ampmLabel : [ 'AM', 'PM' ]});
	time_Init(hour, min, sec, h24);
	setInterval(function() {
		if (sec == 59) {
			sec = -1;
			min++;
		}
		if (min == 60) {
			min = 0;
			hour++;
		}
		if (hour == 23)
			hour == -1;
		sec++;
		$('.js-hour').html(convert12H(hour));
		$('.js-min').html(pad(min, 2));
		$('.js-sec').html(pad(sec, 2));
		$('.js-h24').html(convert12H(hour, {ampmLabel : [ 'AM', 'PM' ]}));
	}, 1000);
}
function pad(n, width) {
	n = n + '';
	return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
}

function time_Init(hour, min, sec, h24) {
	$('.js-hour').html(convert12H(hour));
	$('.js-min').html(pad(min, 2));
	$('.js-sec').html(pad(sec, 2));
	$('.js-h24').html(h24);
}

function convert12H(time, options) {
	var _ampmLabel = (options && options.ampmLabel) || [ "AM", "PM" ];
	var _timeRegExFormat = /^([0-9]+)$/;
	var _timeToken = time.toString().match(_timeRegExFormat);
	if (typeof _timeRegExFormat === "undefine") {
		return null;
	}
	var _intHours = parseInt(_timeToken[1]);
	var _strHours12H = ('0' + (_intHours == 12 ? 12 : _intHours % 12)).slice(-2);
	if (typeof (options) === "object") {
		return _ampmLabel[parseInt(_intHours / 12)];
	} else {
		return _strHours12H;
	}
}
