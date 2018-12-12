// draw the full text of the array in a credit like fasion
draw_set_font(font0);
draw_set_color(c_white);
var m;
for (m = 0; m < array_length_1d(credits); m +=1)
{	
		draw_text(x + space, y + (m * space), string(credits[m]));
}