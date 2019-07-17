$(document).ready(function() {
    function onLoadAnimation(animationDelay){
		$(".layer1").delay(400 + animationDelay).hide("scale", {percent: 2000, direction: 'verticle'}, 2500 );
		$(".layer2").delay(400 + animationDelay).hide("scale", {percent: 2000, direction: 'verticle'}, 5000 );
		$(".layer3").delay(400 + animationDelay).hide("scale", {percent: 2000, direction: 'verticle'}, 8000 );
		$(".invitationText").delay(2400 + animationDelay).fadeOut(300);
		$(".layer4").delay(2400 + animationDelay).fadeOut(2000, function(){
			$(".mainOpening").hide(50, function(){
				$(".mainRainContainer").delay(100).css({
					display: "block",
    				opacity: "1"
				});
			});
		});
		localStorage.setItem("animationDone", true);
	}
	var animationDone = localStorage.getItem("animationDone");
	
	setTimeout(function(){
		onLoadAnimation(0);
	}, 5000);

	if (!readCookie("adSeen")) {
		createCookie("adSeen", "1", 1000);
		console.log("creating cookie")
	} else {
		document.getElementById("introAnimation").classList.add("invisible");
	}

	function createCookie(name, value, days) {
        if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            var expires = "; expires=" + date.toGMTString();
        } else var expires = "";
		document.cookie = name + "=" + value + expires + "; path=/";
    }

    function readCookie(name) {
		console.log("cookie read?");
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
        }
        return null;
    }
	

});