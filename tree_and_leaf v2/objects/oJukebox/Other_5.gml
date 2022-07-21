

var current_music = global.current_music;
var new_music = global.new_music;

if new_music != current_music
{
	audio_sound_gain(current_music,0,1000);
	audio_play_sound(new_music,5, true);
	audio_sound_gain(new_music,0,0);
	audio_sound_gain(new_music, 0.5, 1000);
}