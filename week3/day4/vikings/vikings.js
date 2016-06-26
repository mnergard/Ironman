var Viking = function(name, health, strength){
	this.name = name;
	this.health = Math.floor(Math.random()*100+101)
	this.strength =	Math.floor(Math.random()*100)
}

var barfotter = new Viking("Barfotter");
var harald = new Viking("Harald");
var torleif = new Viking("Torleif");
var sigurd = new Viking("Sigurd");
var harfagre = new Viking("Hårfagre")
var arrayVikings = [barfotter, harald, torleif, sigurd, harfagre];


var valhall = function(viking1, viking2){
	
	while (viking1.health > viking2.strength && viking2.health > viking1.strength) {  
		console.log(viking1.name, viking1.health, viking2.name, viking2.health);
		
		viking1.health -= viking2.strength;
		viking2.health -= viking1.strength;
	}
	return winner(viking1, viking2);
}	
var winner = function(viking1, viking2){
		if (viking1.health < viking2.strength && viking2.health < viking1.strength )  { 
			console.log("None of the brave fighters will survive another round." + viking2.name + " has " + viking2.health + " health left and " + viking1.name + " has " + viking1.health);
			var index = arrayVikings.indexOf(viking1);
			arrayVikings.splice(index, 1);
			var index = arrayVikings.indexOf(viking2);
			arrayVikings.splice(index, 1);			
			}
		else if (viking1.health < viking2.strength){
			console.log(viking1.name + " yields with a health of " + viking1.health + ". " + viking2.name + " wins.");
			var index = arrayVikings.indexOf(viking1);
			arrayVikings.splice(index, 1);
			}
		else if (viking2.health < viking1.strength){
			console.log(viking2.name + " yields with a health of " + viking2.health + ". " + viking1.name + " wins.");
			var index = arrayVikings.indexOf(viking2);
			arrayVikings.splice(index, 1);			
			}
			
}
var war = function(){
	while (arrayVikings.length > 1) { 
		var rand = arrayVikings[Math.floor(Math.random() * arrayVikings.length)];
		var rand2 = arrayVikings[Math.floor(Math.random() * arrayVikings.length)];
		while (rand == rand2) {
			rand2 = arrayVikings[Math.floor(Math.random() * arrayVikings.length)];
		}
		valhall(rand, rand2);	
	}
}
war();	
		

	

