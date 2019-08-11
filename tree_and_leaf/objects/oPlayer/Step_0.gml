if !instance_exists(oInput)
{
	input = instance_create_layer(0,0,"Instances",oInput);
}else input = oInput;

phy_fixed_rotation = true;
friction = normal_friction;

if last_grounded != grounded && grounded == true && jump_timer > 20
{
	move_speed = 0;
	screenshake(4,3);
	audio_sound_pitch(aJumpland,choose(0.8,1.0,1.2));
	audio_play_sound(aJumpland,5,0);
}

remain_jump_timer ++;

if grounded
{
	remain_jump_timer = 0;
}

if jumping
{
	jump_timer ++;
}else jump_timer = 0;


last_grounded = grounded

//move
if input.right
{
	dir = 1;
	image_xscale = dir;
	set_state_sprite(sPlayer_walk,0.6,0);
}
if input.left
{
	dir = -1;
	image_xscale = dir;
	set_state_sprite(sPlayer_walk,0.6,0);
}

if grounded && (input.left || input.right)
{
	if animation_hit_frame(1) || animation_hit_frame(5)
	{
		audio_sound_pitch(aFootstep,choose(0.8,1.0,1.2));
		audio_play_sound(aFootstep,5,0);
	}
}


if !input.right && !input.left && grounded
{
	set_state_sprite(sPlayer_idle,0.1,0);
	dir = 0;
	move_speed -= acceleration;
	air_speed -= acceleration;
}else
{
	grounded = true;
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
		grounded = false;
	}
}

if grav > 0
{
	if phy_speed_y > 0
	{
		grounded = false;
	}
}

if(input.jump && remain_jump_timer < 5) && !jumping
{
	physics_apply_impulse(x,y,0,-jump_impultion);
	screenshake(3,3);
	jumping = true;
	grounded = false;
}


//change gravity

if gravity_change != global.gravity_change
{
	grav = -grav;
	jump_impultion = -jump_impultion;
}
gravity_change = global.gravity_change;

physics_world_gravity(0, grav);

if y <= room_height/2 && global.gravity_change
{
	image_yscale = -1;
}else image_yscale = 1;
if y > room_height/2 && !global.gravity_change
{
	image_yscale = 1;
}

if place_empty(x,y) && jump_timer > 3
{
	if grav > 0
	{
		if phy_position_y > phy_position_yprevious
		{
			set_state_sprite(sPlayer_up,0,0);	
		}
		if phy_position_y <= phy_position_yprevious
		{
			set_state_sprite(sPlayer_dawn,0,0);	
		}
	}
	if grav < 0
	{
		if phy_position_y > phy_position_yprevious
		{
			set_state_sprite(sPlayer_up,0,0);	
		}
		if phy_position_y <= phy_position_yprevious
		{
			set_state_sprite(sPlayer_dawn,0,0);	
		}
	}
}

//show_debug_message("sprite index" + string(sprite_get_name(sprite_index)));