/// @description Handle mouse presses
// You can write your code in this editor

// For each device (assuming you'll only ever use 5 fingers)
for (var i = 0; i < 5; i++) {
	// If the device is pressed
	if (device_mouse_check_button_pressed(i, mb_left)) {
		// Position reading
		var x_mouse = device_mouse_x(i);
		var y_mouse = device_mouse_y(i);
	
		if (position_meeting(x_mouse, y_mouse, obj_shoot)) {
		// Shoot
		
		} else {
		// Move
			obj_cursor.x = x_mouse;
			obj_cursor.y = y_mouse;
		}
	}
}