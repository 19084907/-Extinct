/// @description Insert description here
// You can write your code in this editor
draw_self();

if (playerHealth < playerMaxHealth) {
	draw_healthbar(x-200, y-400, x+500, y-350, (playerHealth/playerMaxHealth)*100, c_red, c_yellow, c_yellow,0,true,true);
}