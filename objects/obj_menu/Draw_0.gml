//The draw method will allign and draw the text in screen.
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(font0);
//this is the sword that displays behind the given text
draw_sprite_stretched(sprite_index, 0, x -50, y + (mpos * space) - 45, 350, 94);

//this for loop will run and print all the arrrays elements to screen
var m;
for (m = 0; m < array_length_1d(menu); m +=1)
{	if(m == mpos)
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