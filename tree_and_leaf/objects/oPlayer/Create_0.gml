input = noone;

jumping = true;
grounded = false;
last_grounded = false;

dir = 0;
move = 0;

grav = 30;
gravity_change = false;

normal_friction = 0.5;


x_start = x;
y_start = y;


acceleration = 0.1;

move_speed = 2;
move_speed_max = move_speed;

air_speed = 1;
air_speed_max = air_speed;


jumping = true;
jump_dir = 0;
jump_impultion = 42;
jump_timer = 0;
remain_jump_timer = 0;

physics_world_gravity(0, grav);


//dependencises

if !instance_exists(oInput)
{
	input = instance_create_layer(0,0,"Instances",oInput);
}else input = oInput;