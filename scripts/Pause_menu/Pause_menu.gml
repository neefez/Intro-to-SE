//this method will present the pausemenu and will select the specific items inplementation
Pause_mnu.visible = true;
pmpos  = Pause_mnu.pmpos;
switch (pmpos)
{
	case 0: 
	{
		global.paused = false;
		Pause_mnu.visible = false;
		instance_destroy();
		break;
		
	}
	case 1:
	{
		Pause_mnu.visible = false;
		view_set_visible(0, false);
		room_goto(0);
		break;
	}
	case 2:
	{
		game_end();
		break;
	}
	default: break;

}