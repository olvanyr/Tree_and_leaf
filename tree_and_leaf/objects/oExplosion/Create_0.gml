var s_width = sprite_width;
var s_height = sprite_height;
var r_width = room_width;
var r_height = room_height;

image_xscale = (r_width/s_width);
image_yscale = (r_height/s_height);

audio_play_sound(warpout,3,false);