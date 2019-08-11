if keyboard_check_pressed(ord("P"))
{
	gravity_change = !gravity_change;
}

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
}

if keyboard_check_pressed(ord("E"))
{
	instance_create_layer(0,0,"Explosion",oExplosion);
}

