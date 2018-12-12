//Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_pause = keyboard_check_pressed(vk_escape);

//React to inputs
if(!global.paused)
{
	
//-------------------------------------------------
// This chunck of code here is to handle 
// any form of collision the player has
//-------------------------------------------------
	move = key_left + key_right;
	hsp = move * movespeed;
	if (vsp < 10) 
		vsp += grav;
		
	if (place_meeting(x,y+1,obj_wall))
	{
	    vsp = key_jump * -jumpspeed
	}
	
	if (place_meeting(x+hsp,y,obj_wall))
	{
		while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	x+= hsp;


	if (place_meeting(x,y+vsp,obj_wall))
	{
		while(!place_meeting(x,y+sign(vsp),obj_wall))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
	
	
//-------------------------------------------------
// These if statements will run to check when the
// user uses any of the given inputs, these two ifs
// are for left and right movement.
//-------------------------------------------------
if(!Swordattack && !Bowattack)
{
	if(keyboard_check(vk_right) > 0)
	{
		if(hsp != 0)
			image_xscale = sign(hsp);
		if(frame <=6)
			frame++;
		else
			frame = 0;
	}

	else if(keyboard_check(vk_left) > 0)
	{
		if(hsp != 0)
			image_xscale = sign(hsp);
		if(frame <=6)
			frame++;
		else
			frame = 0;
	}
	else
		frame = 0;
}

//-------------------------------------------------
// These are the attack inputs, for the bow or the
// sword.
//-------------------------------------------------
	if(Swordattack == true)
	{
		if(frame <10)
			frame++;
		else
		{
			frame = 0;
			Swordattack = false;
		}
	}
	else if(Bowattack == true)
	{
		if(frame <=16)
			frame++;
		else
			Bowattack = false;
	}
	else if(keyboard_check_pressed(ord("Z")))
	{
		frame = 8;
		Swordattack = true;
		instance_create_depth(x,y,0,Sword_Hit_Box);
		audio_play_sound(Sword5,1,0);
	}
	else if(keyboard_check_pressed(ord("X")))
	{
		frame = 11;
		Bowattack = true;
		instance_create_depth(x,y,0,obj_arrow);
		audio_play_sound(Bow,1,0);
	}
	
//-------------------------------------------------
// This if will keep the player from taking damage
// for a few frames, so the player cant insta die.
//-------------------------------------------------
	if( invulnerable )
	{
		invulcount++;
		if(invulcount % 60 == 0)
			invulnerable = false;
	}
}


//this bit of code is meant for the pasue menu, and creates an instance of the menu
if(keyboard_check_pressed(vk_escape))
{
	instance_create_depth(x,y,0,Pause_mnu);
	global.paused = true;
}


//this is for if the plays has died, and will play the lose sound and restart the level.
if(global.hp == 0)
{
	if(timer = 0)
		audio_stop_all();
	global.paused = true;
	timer++
	if(timer = 1)
		audio_play_sound(GameOver,1, 0);
	if( timer == 60)
	{
		room_restart();	
	}
}

