# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
var i = 0;
var mainHealth = document.getElementById("mainHealth"); 
var enemyHealth = document.getElementById("enemyHealth"); 


function myMove() {
	
	var pos;
	var inc;
	var total = 0;
	
	if (i%2 == 0) 
	{
		pos = 0;
		inc = 1;
		player = document.getElementById("main"); 
		health = document.getElementById("enemyHealth"); ;
		playerHit = $( "#enemyHit" );
	}
	else
	{
		pos = 350;
		inc = -1;
		player = document.getElementById("enemy"); 	
		health = document.getElementById("mainHealth");
		playerHit = $( "#mainHit" );
	}
	
    var id = setInterval(battle, 10);
    function battle() {
		
		hit = Math.random() * 20;
		
        if (total == 350) {
			player.style.top = total - pos + 'px'; 
            player.style.left = total - pos + 'px'; 
			
			playerHit.empty();
			playerHit.append( "<p>-" + Math.round(hit) + "</p>" );
			health.value -= hit;
            clearInterval(id);
        } else {
            pos+=inc*5; 
			total = total + 5;
            player.style.top = pos + 'px'; 
            player.style.left = pos + 'px'; 
        }
		
		
		
		if (health.value == 0)
		{
			document.getElementById("button").disabled = true;
			$("#won").append("<p style='color:red'>U won</p>");
		}
    }
	
	i++;
}
