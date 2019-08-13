global.explosition = true;

if animation_hit_frame(13)
{
	audio_play_sound(explosion1,9,false);
}

if animation_end()
{
	image_speed = 0;
}else screenshake(8,2);