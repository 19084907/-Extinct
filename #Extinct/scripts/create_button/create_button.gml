///@arg x
/// @arg y
///@arg width
/// @arg height
///@arg text
///@arg script

//arguments
var _x = argument[0];
var _y = argument[1];
var _width = argument[2];
var _height = argument[3];
var _text = argument[4];
var _script = argument[5];
var _id = argument[6];
//create button
var _button = instance_create_layer(_x,_y,"instances", obj_Button);

//set values
with(_button) {
	width = _width;
	height = _height;
	text = _text;
	script = _script;
	number = _id;
}

return _button;
