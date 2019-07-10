/// @description Draws the GUI image
// You can write your code in this editor
switch (button_function) {
	case "pause":
		draw_sprite(spr_buttons, 0, x, y);
		break;
	case "play":
		draw_sprite(spr_buttons, 1, x, y);
		break;
	case "restart":
		draw_sprite(spr_buttons, 3, x, y);
		break;
	case "quit":
		draw_sprite(spr_buttons, 2, x, y);
		break;
}