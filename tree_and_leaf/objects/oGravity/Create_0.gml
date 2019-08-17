global.gravity_change = false;

//color
alpha = 0;
alpha_max = 0.2;

color = c_blue;

timer = 0;
gravity_change = false;

tableau = noone;

tableau = room;

switch(tableau)
{
	case rTableau1 : 
	{
	min_time = 500000000000;
	max_time = 800000000000;

	gravity_wave_length = 300;
	}
	break;
	case rTableau2 : 
	{
	min_time = 500000000000;
	max_time = 800000000000;

	gravity_wave_length = 300;
	}
	break;
	case rTableau3 : 
	{
	min_time = 500;
	max_time = 800;

	gravity_wave_length = 600;
	}
	break;
	case rTableau31 : 
	{
	min_time = 500000000000;
	max_time = 800000000000;

	gravity_wave_length = 300;
	}
	break;
	case rTableau4 : 
	{
	min_time = 500;
	max_time = 800;

	gravity_wave_length = 600;
	}
	break;
	case rTableau5 : 
	{
	min_time = 500;
	max_time = 700;

	gravity_wave_length = 300;
	}
	break;
	case rTableau6 : 
	{
	min_time = 500;
	max_time = 700;

	gravity_wave_length = 400;
	}
	break;
	case rTableau_last: 
	{
	min_time = 500000000000;
	max_time = 800000000000;

	gravity_wave_length = 300;
	}
	break;
}


gravity_wave = irandom_range(min_time,max_time);
