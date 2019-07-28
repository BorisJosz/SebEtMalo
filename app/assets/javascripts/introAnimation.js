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

});