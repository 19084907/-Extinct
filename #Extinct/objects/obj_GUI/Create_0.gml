/// @description Insert description here
// You can write your code in this editor
active = camera_get_active();

number_kids = 10;
meat_and_bones = 300;
wave_number = 1;

if (active != view_camera[0])
{
	view_camera[0] = active;	
}

//xDiff = round (view_get_xport(0) / 2);  not using viewports
//yDiff = round (view_get_yport(0) / 2);