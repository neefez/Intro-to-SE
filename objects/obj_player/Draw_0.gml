//draw the character if they are not injured
if(!invulnerable || invulcount % 5 != 0)
{
	draw_sprite_ext(knight, frame, x, y , image_xscale, image_yscale, 0,c_white,1);
}
else
	draw_sprite_ext(knight, frame, x, y, 1, 1, 0, 0, .5); // draw the injured character