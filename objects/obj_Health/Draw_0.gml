//this whole method will draw the users current health, if they lose health
// the red bar will be decresed by 1/5
barsize = 108/5;
x = obj_player.x - 80;
y = obj_player.y - 110;
draw_sprite_part(RedHealth, image_index, 0, 0, barsize * healthnum, 32, x, y);
draw_sprite_part(HlthBar, image_index, 0, 0, barsize * global.totalhp + 3, 32, x, y);
