/// @description Go to credits room
// You can write your code in this editor
if (goto_credits) {
	room_goto(room_credits);
} else if (goto_game) {
	room_goto(room_level1);
} else {
	room_goto(room_title);
}
