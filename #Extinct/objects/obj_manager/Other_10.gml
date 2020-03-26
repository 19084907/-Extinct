/// @description Insert description here
// You can write your code in this editor
var _width = 300;
var _height = 100;

create_button(40,40, _width, _height,"Play", on_click, 1);

create_button(40,40+_height+40, _width, _height, "Pause", on_click, 2);

create_button(40,40+(_height+40)*2, _width, _height, "Quit", on_click, 3);