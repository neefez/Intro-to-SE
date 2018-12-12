
grav = 0.5; //the percentage gravity should affect the player.
hsp = 0;	//the horizontal speed
vsp = 0;	//vertical speed
jumpspeed = 9;
movespeed = 4;
frame = 0; //frame to draw the sprite
invulnerable = false; //if the character can be injured
invulcount = 0;
flash = 0;
global.paused = false; //global variable to pause all enemies. this is a bad design i know
Swordattack = false; //if the sword is used
Bowattack = false; // if the bow is used
timer = 0; // time to wait after player dies