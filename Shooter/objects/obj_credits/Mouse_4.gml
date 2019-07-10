/// @description Go to rm_credits
// You can write your code in this editor
if (global.at_credits) {
	global.at_credits = 0;
	room_goto(rm_title);
} else {
	global.at_credits = 1;
	room_goto(rm_credits);
}
