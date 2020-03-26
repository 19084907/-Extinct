/// @description Insert description here
// You can write your code in this editor
image_xscale = -1;
deathCounter = 0;
//pick a random seed for less predictable number generation
randomize();

//initialize player stats
playerLevel = 1;

playerMaxHealth = 75 + (playerLevel * 25);
playerHealth = playerMaxHealth;

playerAttack = 5;
playerDefense = 5;

playerCurrentEXP = 0;
playerMaxEXP = 100;

path_start(path_dinosaur, 2, path_action_stop, false);

audio_play_sound(bugle, 0, 0);