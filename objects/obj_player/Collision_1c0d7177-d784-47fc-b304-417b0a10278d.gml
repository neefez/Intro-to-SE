//if the player runs into an enemy, they will get damaged
if (place_meeting(x,y+vsp,obj_enemy) && !invulnerable)
	{
		audio_play_sound(Hurt, 1,0);
		global.hp -= 1;
		invulnerable = true;
		invulcount = 0;
	}