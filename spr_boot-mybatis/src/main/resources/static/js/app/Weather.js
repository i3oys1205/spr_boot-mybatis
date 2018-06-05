$(function(){
	
	geolocation_init();
})

function geolocation_init(){
	if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(geolocation);
    } else { 
    	msg('지원하지 않는 브라우저','해당 브라우저는 위치 확인을 할수없습니다');
    }
}

function geolocation(position){
	$.ajax({
		url      : 'https://api.darksky.net/forecast/0b7f63b797359213839f773ff71a53b8/'+position.coords.latitude+','+position.coords.longitude+'?lang=ko',
		dataType : 'jsonp',
		async    : false,
		success  : function(e){
			
			var apparentTemperature = (e.currently.apparentTemperature-32)/1.8;
			var icon;
			$('.timezon').text(e.timezone); //위치
			$('.summary').text(e.currently.summary); //날씨상태
			//e.currently.iocn; //iocn clear-day, clear-night, rain, snow, sleet, wind, fog, cloudy, partly-cloudy-day, or partly-cloudy-night
			switch(e.currently.icon){
			case "clear-day" :
					icon = "wi-day-sunny";
					break;
			case "clear-night" :
					icon = "wi-night-clear";
					break;
			case"rain" :
					icon = "wi-rain-wind";
					break;
			case "snow" :
					icon = "wi-snow";
					break;
			case "sleet" :
					icon = "wi-sleet";
					break;
			case "wind" :
					icon = "wi-windy";
					break;
			case "fog" :
					icon = "wi-fog";
					break;
			case "cloudy" :
					icon = "wi-cloudy";
					break;
			case "partly-cloudy-day" :
					icon = "wi-day-cloudy-high";
					break;
			case "partly-cloudy-night" :
					icon = "wi-night-alt-cloudy-high";
					break;
			}
			$('.apparentTemperature').text(apparentTemperature.toFixed(2)); //화씨 -> 섭씨
			$('.windGust').text(e.currently.windGust+"m/s"); //바람
			$('.precipProbability').text(e.currently.precipProbability+"%"); //강수확률
			$('.visibility').text(e.currently.visibility+"%"); //가시성
			$('.wicon').addClass(icon);
			parent.onFrameComplate();
		},
		error    : function(e){
			msg("Error");
		}
		
	})
}

function msg(title,contents){
	$('.msg-modal').modal();
	$('.msg-title').text(title);
	$('.msg-contents').text(contents);
}