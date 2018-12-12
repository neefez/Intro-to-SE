//This switch statement will run 1 of the 3 specific items shown on the main menu
switch (mpos)
{
	case 0: 
	{
		room_goto_next();
		room_set_view_enabled(room0,1);
		break;
	}
	case 1:
	{
		if file_exists("Save.sav")
		{
			var LoadFile = file_text_open_read("Save.sav");
			var LoadingRoom = file_text_read_real(LoadFile);
			file_text_close(LoadFile);
			room_goto(LoadingRoom);
		}
		break;
	}
	case 2:
	{
		game_end();
		break;
	}
	default: break;

}