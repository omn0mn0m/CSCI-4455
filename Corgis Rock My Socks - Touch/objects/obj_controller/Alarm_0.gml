/// @description Spawn new socks
// You can write your code in this editor
if (spawn_socks) {
	if (irandom(8) == 1) {
		instance_create_layer(irandom(1072), irandom_range(224, 576), "Instances", obj_speed_sock);
	} else {
		instance_create_layer(irandom(1072), irandom_range(224, 576), "Instances", obj_sock);
	}
	
	randomize();
	alarm[0] = room_speed * 0.5;
}