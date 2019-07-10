/// @description Moves camera to the right
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
vx = vx + 1
camera_set_view_pos(view_camera[0],vx,vy);

obj_jet.x = obj_jet.x + 1;