if global.gravity_change
{
	if alpha <= 0.1
	{
		alpha += 0.001;
	}
}

if !global.gravity_change
{
	if alpha > 0
	{
		alpha -= 0.001;
	}
}

if alpha == 0
{
	
}