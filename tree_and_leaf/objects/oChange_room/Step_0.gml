if place_meeting(x,y,oPlayer)
{
	room_goto(next_room);
	oPlayer.x = x_next;
	oPlayer.y = y_next;
	oCamera.x = x_next;
	oCamera.y = y_next;
}