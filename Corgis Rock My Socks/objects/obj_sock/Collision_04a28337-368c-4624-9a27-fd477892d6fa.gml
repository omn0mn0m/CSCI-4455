/// @description Add to score
// You can write your code in this editor
if(other.corgi_type == "PLAYER") {
	global.player_score += 5;
} else if (other.corgi_type == "RIVAL") {
	global.rival_score += 5;
} else {
	
}

if ((global.player_score - global.rival_score) >= 25) {
	room_goto_next();	
}

other.WALK_MULTIPLIER = 1;

instance_destroy();