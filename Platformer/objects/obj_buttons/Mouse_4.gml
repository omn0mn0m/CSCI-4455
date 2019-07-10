/// @description Toggle gamePaused
// You can write your code in this editor
switch (button_function) {
	case "pause":
		vx = camera_get_view_x(view_camera[0]);
		vy = camera_get_view_y(view_camera[0]);
		
		instance_deactivate_all(true);
		instance_create_depth(vx, vy, 0, obj_pause_bg);
		global.btn_restart = instance_create_depth(vx, vy + 64, -1, obj_buttons);
		
		with (global.btn_restart) {
			button_function = "restart";
		}
		
		global.btn_quit = instance_create_depth(vx, vy + 128, -1, obj_buttons);
		
		with (global.btn_quit) {
			button_function = "quit";
		}
		
		global.gamePaused = 1;
		button_function = "play";
		break;
	case "play":
		instance_destroy(obj_pause_bg);
		instance_destroy(global.btn_quit);
		instance_destroy(global.btn_restart);
		instance_activate_all();
		
		global.gamePaused = 0;
		button_function = "pause";
		break;
	case "quit":
		room_goto(rm_lvl_select);
		break;
	case "restart":
		room_restart();
		break;
}

