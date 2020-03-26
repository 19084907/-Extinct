/// @description Insert description here
// You can write your code in this editor
randomize();

if collision_circle(x,y,100, obj_skull, false, true)
{
	playerHealth -= 25;
	//instance_destroy(id, true);
	
	audio_play_sound(choose(explosionCar, explNoDebris, expl, explRockDebris),0.9, false);
	
	var temp = random_range(1,100);
	if (temp > 70){
		audio_play_sound(roarDinoAmateur,0.5,false);
	}
	with (obj_skull) {
		instance_create_layer(x,y,"Instances", obj_first_particle);
		sprite_delete(id);
		instance_destroy(id, true);
		}
		
		
}


if (playerHealth >= playerMaxHealth) {
	playerHealth = playerMaxHealth;	
}

if (playerHealth <= 0) {
	
	instance_destroy();
	
	
	with(obj_GUI) {
		meat_and_bones += 50;
	}
	//game_restart();
}
