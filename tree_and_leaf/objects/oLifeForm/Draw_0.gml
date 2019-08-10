draw_self();

if flash > 0
{
	
	flash -= 0.05;
	
	gpu_set_blendmode(bm_add);
	
	shader_set(shdFlash);
	var _alpha = shader_get_uniform(shdFlash, "_alpha");
	var _red = shader_get_uniform(shdFlash, "_red");
	var _green = shader_get_uniform(shdFlash, "_green");
	var _blue = shader_get_uniform(shdFlash, "_blue");
	
	shader_set_uniform_f(_alpha, flash);
	shader_set_uniform_f(_red, red);
	shader_set_uniform_f(_green, green);
	shader_set_uniform_f(_blue, blue);

	draw_self();

	shader_reset();

	gpu_set_blendmode(bm_normal);
}

if flash == 0
{
	// Flash shader value for white
	red = 255;
	green = 255;
	blue = 255;

}


