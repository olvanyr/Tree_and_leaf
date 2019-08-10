if steped && !place_meeting(x,y - 1, oPlayer)
{
	vsp += grav;
	phy_position_y += vsp;
}