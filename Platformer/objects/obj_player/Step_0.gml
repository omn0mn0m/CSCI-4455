/// @description Physics
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_up);

// Checks if player can jump
var can_jump = place_meeting(x, y + 1, obj_block);

// Special Block Check
if (place_meeting(x, y + 1, obj_block_speed)) {
	WALK_SPEED = 24;
	JUMP_SPEED = -16;
} else if ((place_meeting(x, y + 1, obj_block_bounce))) {
	WALK_SPEED = 12;
	JUMP_SPEED = -24;
} else if ((place_meeting(x, y + 1, obj_block))) {
	WALK_SPEED = 12;
	JUMP_SPEED = -16;
} else {
	WALK_SPEED = WALK_SPEED;
	JUMP_SPEED = JUMP_SPEED;
}

// Left-right movement
var left_n1_right_p1 = key_right - key_left;; // -1 for left, 1 for right

var x_speed = left_n1_right_p1 * WALK_SPEED;

// If an x collision is next frame
if (place_meeting(x + x_speed, y, obj_block)) {
	// Move the player horizontally until it meets the block
	while (!place_meeting(x + sign(x_speed), y, obj_block)) {
		x = x + sign(x_speed);
	}
	
	x_speed = 0; // Stop the player
}

x += x_speed; // Move the player in the x-direction

// Vertical movement
if (can_jump && key_jump) {
	y_speed = JUMP_SPEED;	
}

// Gravity
y_speed = y_speed + grav;

// If a y collision is next frame
if (place_meeting(x, y + y_speed, obj_block)) {
	// Move the player down until it meets the block
	while (!place_meeting(x, y + sign(y_speed), obj_block)) {
		y = y + sign(y_speed);
	}
	
	y_speed = 0; // Stop the player
}

y += y_speed; // Move the player in the y-direction
