input = noone;

jumping = true;
grounded = false;
last_grounded = false;

dir = 0;
move = 0;

grav = 30;

phy_fixed_rotation = true;


normal_friction = 0.5;



acceleration = 0.1;

move_speed = 2;
move_speed_max = move_speed;

air_speed = 1;
air_speed_max = air_speed;


jumping = true;
jump_dir = 0;
jump_impultion = 38;

physics_world_gravity(0, grav);


//dependencises

if !instance_exists(oInput)
{
	input = instance_create_layer(0,0,"Instances",oInput);
}