//To save the room the instant the player enters the room
if(file_exists("Save.sav")) file_delete("Save.sav");
var SaveFile = file_text_open_write("Save.sav");
var SaveRoomNum = room;
file_text_write_real(SaveFile,SaveRoomNum);
file_text_close(SaveFile);


//set the player health to 5 whenever entering a new room
global.hp = 5;
x = 80;
y = 400;
if(room !=3)
	instance_create_depth(x,y,0,obj_Health);