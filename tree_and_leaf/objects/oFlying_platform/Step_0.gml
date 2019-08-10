
timer ++;

if timer < amplitude
{
	phy_position_x ++;
}
if timer < amplitude * 2
{
	phy_position_x --;
	timer = 0;
}

phy_position_y = ystart;

