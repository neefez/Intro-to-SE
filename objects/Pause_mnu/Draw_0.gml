//this code runs the same as the main menu, and draws the correct sprite where the user is
// selecting
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(font0);
draw_sprite_stretched(Scroll , 0, x-170, y-100, 800, 400);
draw_sprite_stretched(sprite_index, 0, x -50, y + (pmpos * space) - 45, 350, 94);


var m;
for (m = 0; m < array_length_1d(menu); m +=1)
{	if(m == pmpos)
	{
		draw_set_color(c_red);
		draw_text(x + space, y + (m * space), string(menu[m]));
	}
	else
	{
		draw_set_color(c_dkgray);
		draw_text(x + space, y + (m * space), string(menu[m]));
	}
}
