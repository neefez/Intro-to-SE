//the boss will have the same kind of mevment as the enemy
if(!global.paused && !dead)
{
	if (vsp < 10) vsp += grav;
 

	if (place_meeting(x,y+vsp,obj_wall))
	{
	    while(!place_meeting(x,y+sign(vsp),obj_wall))
	    {
	        y += sign(vsp);
	    }
	    vsp = 0;
	}
	
	y += vsp;
	x -= hsp;
}