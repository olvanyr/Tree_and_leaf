if !audio_is_playing(global.current_music)
{
	audio_play_sound(global.current_music, 5, true);
}

if audio_sound_get_gain(global.current_music) <= 0
{
	audio_stop_sound(global.current_music);
	global.current_music = global.new_music; 
}