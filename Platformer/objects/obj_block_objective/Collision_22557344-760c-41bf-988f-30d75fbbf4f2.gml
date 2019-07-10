/// @description Go to a room
// You can write your code in this editor
switch(destination) {
	case 0:
		room_goto(rm_lvl_select);
		break;
	case 1:
		room_goto(rm_lvl1);
		break;
	case 2:
		room_goto(rm_lvl2);
		break;
}
