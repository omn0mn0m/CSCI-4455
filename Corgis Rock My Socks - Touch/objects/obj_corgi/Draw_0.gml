/// @description Draws corgi stuff
// You can write your code in this editor
if (corgi_type == "PLAYER") {
	if (move_direction == "left") {
		draw_sprite(spr_corgi, 0, x, y);
	} else {
		draw_sprite(spr_corgi, 1, x, y);	
	}
	
} else {
	if (move_direction == "left") {
		draw_sprite(spr_corgi, 2, x, y);
	} else {
		draw_sprite(spr_corgi, 3, x, y);	
	}
}