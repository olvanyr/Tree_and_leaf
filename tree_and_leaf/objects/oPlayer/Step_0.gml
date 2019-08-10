/// @desc

friction = normal_friction;

if last_grounded != grounded && grounded == true
{
	move_speed = 0;
	screenshake(4,3);
}
last_grounded = grounded

//move
if input.right
{
	dir = 1;
}
if input.left
{
	dir = -1;
}


if !input.right && !input.left && !jumping
{
	dir = 0;
	move_speed -= acceleration;
	air_speed -= acceleration;
}else
{
	move_speed += acceleration;
	air_speed += acceleration;
}

move_speed = clamp(move_speed, 0, move_speed_max);
air_speed = clamp(air_speed, 0, air_speed_max);

if jumping
{
	move = (air_speed * dir) + (move_speed * jump_dir);
} else 
{
	move = move_speed * dir
	jump_dir = dir;
}

move = clamp(move, -move_speed, move_speed);

phy_position_x += move;

//jump
if grav < 0
{
	if phy_speed_y < 0
	{
		jumping = true;
		grounded = false;
	}
}

if grav > 0
{
	if phy_speed_y > 0
	{
		jumping = true;
		grounded = false;
	}
}

if(input.jump && !jumping)
{
	physics_apply_impulse(x,y,0,-jump_impultion);
	screenshake(3,3);
	jumping = true;
	grounded = false;
}


//change gravity

if keyboard_check_pressed(ord("P"))
{
	grav = -grav;
	jump_impultion = -jump_impultion;
	physics_world_gravity(0, grav);
}
