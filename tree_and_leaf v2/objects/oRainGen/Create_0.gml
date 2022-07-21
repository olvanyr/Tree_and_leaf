// Rain systeme

rain_system = part_system_create();
part_system_depth(rain_system,-1);

part_rain = part_type_create();

part_type_shape(part_rain,pt_shape_line);
part_type_size(part_rain,0.2,0.3,0,0);
part_type_color2(part_rain,c_teal,c_white);
part_type_alpha2(part_rain,0.4,0.2);
part_type_gravity(part_rain,0.3,290);
part_type_speed(part_rain,2,0.3,0,0);
part_type_direction(part_rain,250,330,0,1);
part_type_orientation(part_rain,290,290,0,0,false);

part_type_life(part_rain,-100, room_height);

emitter_rain = part_emitter_create(rain_system);
part_emitter_region(rain_system,emitter_rain,-100,room_width,0,0,ps_shape_rectangle,ps_distr_linear);

alarm[0] = 10;
