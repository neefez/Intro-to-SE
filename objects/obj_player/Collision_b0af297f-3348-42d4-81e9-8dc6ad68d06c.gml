//if the player tries to run through the wall, this will stop them
if(BossWall.numEnemies != 0)
{
	   if(BossWall.x >= x)
	   {
			hsp = -10;   
	   }
	   else if(BossWall.x <= x)
	   {
			hsp = +10;   
	   }
}