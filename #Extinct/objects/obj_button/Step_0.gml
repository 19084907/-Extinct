/// @description Insert description here
// You can write your code in this editor
var _hover = get_hover();
var _click = _hover && mouse_check_button_pressed(mb_left);

//hover
hover = lerp(hover, _hover,0.1);
y = lerp(y,ystart - _hover * 8, 0.1);
//click
if (_click && script >= 0) {
	script_execute(script);
	
	if (number == 1) {
		event_user(0);

	}else if (number == 2) {
		//event_user(1);

	} else {
		event_user(2);
	
	}
}