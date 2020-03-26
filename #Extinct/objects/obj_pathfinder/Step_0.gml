/// @description Insert description here
// You can write your code in this editor
inst = instance_nearest(x,y,obj_preTower);

//if (mouse_check_button_pressed(mb_left) && global.selected) {
	path = aStarGetPath(x,y,inst.x,inst.y);//mouse_x, mouse_y);	//returns path
	//path_start(path,1,0,true);
	//path index to start, speed, endaction, absolute
//global.selected = false;
//}

path_start(path, 5, path_action_stop, false);