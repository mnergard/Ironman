var Viking = function(name, health, strength){
	this.name = name;
	this.health = Math.floor(Math.random()*500+101)
	this.strength =	Math.floor(Math.random()*100)	
	this.sayName = function() {
		console.log(this.name);
	}
	this.sayHealth = function() {
		console.log(this.health);
	}
	this.sayStrength = function() {
		console.log(this.strength);
	}
}

var barfotter = new Viking("Barfotter");
var harald = new Viking("Harald");
var torleif = new Viking("Torleif");
var sigurd = new Viking("Sigurd");

var Valhall = function(){

barfotter.sayName();
console.log("vs");
harald.sayName();

while (barfotter.health > harald.strength && harald.health > barfotter.strength) {


	barfotter.health -= harald.strength;
	harald.health -= barfotter.strength;

	if (barfotter.health < harald.strength && harald.health < barfotter.strength )  { 
		console.log("None of the brave fighters will survive another round. The chief has decided that the match ends at a draw. Harlald has " + harald.health + "health left and barfotter has " + barfotter.health)
	}
	else if (barfotter.health < harald.strength){
		console.log("Barfotter yields with a health of " + barfotter.health + ". Harald wins")
	}
	else if (harald.health < barfotter.strength){
		console.log("Harald yields with a health of " + harald.health + ". Barfotter wins")
	}
}
}
Valhall();
