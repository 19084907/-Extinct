/// @description Insert description here
// You can write your code in this editor
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);

var wheel = mouse_wheel_down() - mouse_wheel_up();


if (wheel != 0) {
	wheel *= 0.1;
	
	if (wheel > 0)
		counter++;
	else
		counter--;
		
	if (counter < 12 && counter > -12)
	{
		var addW = camW * wheel;
		var addH = camH * wheel;
	
		camW += addW;
		camH += addH;

		camX -= addW / 2;
		camY -= addH / 2;
	}
}