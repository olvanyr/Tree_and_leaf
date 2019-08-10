if keyboard_check_pressed(ord("P"))
{
	gravity_change = !gravity_change;
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

show_debug_message(global.gravity_change);