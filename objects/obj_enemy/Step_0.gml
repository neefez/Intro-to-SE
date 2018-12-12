//while the pause screen isnt up, the enemy will run back and forth
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
	if(frame < 5)
	{
		frame++;
	}
	else 
		frame = 0;

	y += vsp;
	x -= hsp;
}
