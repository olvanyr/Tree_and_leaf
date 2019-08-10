

grounded = true;


if grav < 0
{
	if place_meeting(x,y - 1, oCollision)
	{
		jumping = false;
	
		if dir == 0 && !input.jump
		{
			friction = 1;
			phy_speed_x = 0;
		}
	}
}
if grav > 0
{
	if place_meeting(x,y + 1, oCollision)
	{
		jumping = false;
	
		if dir == 0 && !input.jump
		{
			friction = 1;
			phy_speed_x = 0;
		}
	}
}