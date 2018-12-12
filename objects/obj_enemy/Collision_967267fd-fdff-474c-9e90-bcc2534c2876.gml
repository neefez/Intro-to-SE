//if the arrow hits the enemy, the enemy takes the proper damage
enemy_health--;
audio_play_sound(MobHurt, 1,0);
if(enemy_health == 0)
{
	instance_destroy();
	BossWall.numEnemies--;
}