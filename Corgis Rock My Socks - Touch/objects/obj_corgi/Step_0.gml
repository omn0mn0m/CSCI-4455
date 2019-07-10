/// @description Movement
// You can write your code in this editor

if (corgi_type == "PLAYER") {
	var left_n1_right_p1 = 0;
	var up_n1_down_p1 = 0;
			
	for (var i = 0; i < 5; i++) {
		// If the device is pressed
		if (device_mouse_check_button(i, mb_left)) {
			// Position reading
			var x_mouse = device_mouse_x(i);
			var y_mouse = device_mouse_y(i);
	
			left_n1_right_p1 = sign(x_mouse - x);
			up_n1_down_p1 = sign(y_mouse - y);
		}
	}


	// Left-right movement
	x_speed = left_n1_right_p1 * WALK_SPEED * WALK_MULTIPLIER;
	
	// Up-down movement
	y_speed = up_n1_down_p1 * WALK_SPEED * WALK_MULTIPLIER;
} else if (corgi_type == "RIVAL") {
	t = instance_nearest(x, y, obj_sock);
	
	if (t != noone) {
	    target = t;
		x_speed = sign(target.x - x) * RIVAL_WALK_SPEED * WALK_MULTIPLIER;
		y_speed = sign(target.y - y) * RIVAL_WALK_SPEED * WALK_MULTIPLIER;
	} else {
		x_speed = 0;
		y_speed = 0;
	}
}

if (x_speed > 0) {
	move_direction = "left";
} else if (x_speed < 0) {
	move_direction = "right";
} else {
	move_direction = move_direction;
}

//// If an x collision is next frame
//if (place_meeting(x + x_speed, y, obj_corgi)) {
//	// Move the player horizontally until it meets the block
//	while (!place_meeting(x + sign(x_speed), y, obj_corgi)) {
//		x = x + sign(x_speed);
//	}

//	x_speed = 0; // Stop the player
//}

if (place_meeting(x + x_speed, y, obj_barrier)) {
	// Move the player horizontally until it meets the block
	while (!place_meeting(x + sign(x_speed), y, obj_barrier)) {
		x = x + sign(x_speed);
	}
	
	if (corgi_type == "RIVAL") {
		var y_sign = sign(target.y - y)
		
		if (y_sign == 0) {
			y_sign = -1;	
		}
		
		y_speed = y_sign * 2 * RIVAL_WALK_SPEED;
	}
	
	x_speed = 0; // Stop the player
}

//// If a y collision is next frame
//if (place_meeting(x, y + y_speed, obj_corgi)) {
//	// Move the player down until it meets the block
//	while (!place_meeting(x, y + sign(y_speed), obj_corgi)) {
//		y = y + sign(y_speed);
//	}
	
//	y_speed = 0; // Stop the player
//}

if (place_meeting(x, y + y_speed, obj_barrier)) {
	// Move the player down until it meets the block
	while (!place_meeting(x, y + sign(y_speed), obj_barrier)) {
		y = y + sign(y_speed);
	}
	
	//if (corgi_type == "RIVAL") {
	//	if (sign(target.x - x) == 0) {
	//		x_speed = RIVAL_WALK_SPEED;
	//	} else {
	//		x_speed = sign(target.x - x) * RIVAL_WALK_SPEED;
	//	}
	//}
	
	y_speed = 0; // Stop the player
}

x += x_speed; // Move in the x-direction
y += y_speed; // Move in the y-direction