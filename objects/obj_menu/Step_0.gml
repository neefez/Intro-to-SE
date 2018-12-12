//This code will check if the uparrow or donw arrow has been pressed and 
// set the correct position of the menu index
var move = 0;
move -= max( keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("w")),0);
move += max( keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("s")),0);

if(move != 0)
{
	mpos += move;
	if(mpos < 0 ) mpos = array_length_1d(menu) - 1;
	if(mpos > array_length_1d(menu) - 1 ) mpos = 0;
}
//this line will run if the user has selected the disired menu item
//this will run the scr_menu() script in response
var ent;
ent = max( keyboard_check_released(vk_enter), keyboard_check_released(vk_space),0);
if(ent == 1) scr_menu();