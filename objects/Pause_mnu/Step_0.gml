


//once called on by the user, the pause menu will take user input from the arrow keys.
if(global.paused)
{
	var move = 0;
	move -= max( keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("w")),0);
	move += max( keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("s")),0);

	if(move != 0)
	{
		pmpos += move;
		if(pmpos < 0 ) pmpos = array_length_1d(menu) - 1;
		if(pmpos > array_length_1d(menu) - 1 ) pmpos = 0;
	}
//when the user selects a specific menu item, the Pause_menu script is run.
	var ent;
	ent = max( keyboard_check_released(vk_enter), keyboard_check_released(vk_space),0);
	if(ent == 1) Pause_menu();
}
