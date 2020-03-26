/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_right)) {
	var inst = instance_create_layer(mouse_x,mouse_y,"Instances", obj_preTower);
} else {
	global.selected = true;
}