/// @description Show correct label
// You can write your code in this editor
if (goto_credits) {
	draw_sprite(spr_title_credits, 1, x, y);
} else if (goto_game) {
	draw_sprite(spr_title_credits, 2, x, y);	
} else {
	draw_sprite(spr_title_credits, 0, x, y);
}
