global.gravity_change = false;

//color
alpha = 0;
alpha_max = 0.2;

color = c_blue;

timer = 0;
gravity_change = false;


switch(tableau)
{
	case rTableau1 : 
	{
	min_time = 500;
	max_time = 800;

	gravity_wave_length = 300;
	}
	break;
	case rTableau3 : 
	{
	min_time = 500;
	max_time = 800;

	gravity_wave_length = 300;
	}
	break;
}


gravity_wave = irandom_range(min_time,max_time);