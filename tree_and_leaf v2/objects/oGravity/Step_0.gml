/*
if keyboard_check_pressed(ord("P"))
{
	gravity_change = !gravity_change;
}

if keyboard_check_pressed(ord("E"))
{
	instance_create_layer(0,0,"Explosion",oExplosion);
}

*/

timer ++;

if !global.gravity_change 
{
	if timer > gravity_wave
	{
		gravity_change = !gravity_change;
		timer = 0;
		gravity_wave = irandom_range(min_time,max_time);
	}
}

if global.gravity_change 
{
	if timer > gravity_wave_length
	{
		gravity_change = !gravity_change;
		timer = 0;
	}
}

if alpha > 0
{
	instance_create_layer(random_range(0,room_width),random_range(0,room_height),"Explosion",oGravity_effect);
}

if gravity_change
{
	audio_sound_gain(shinshi__into_the_sun,0.3,3000);
	audio_play_sound(shinshi__into_the_sun,5,1);
	
	if alpha < alpha_max
	{
		alpha += 0.001;
	}else	global.gravity_change = true;
}

if !gravity_change
{
	if alpha > 0
	{
		alpha -= 0.001;
	}else global.gravity_change = false;
	audio_sound_gain(shinshi__into_the_sun,0,3000);
}

if !global.gravity_change
{
	if audio_is_playing(shinshi__into_the_sun)
	{
		audio_sound_gain(shinshi__into_the_sun,0,1000);
	}
}