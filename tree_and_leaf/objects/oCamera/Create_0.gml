//set up camera
cam = view_camera[0];
follow = noone;

//view_w = 1024;
//view_h = 768;
view_w = 1024 - 64;
view_h = 768 - 64;

xTo = xstart;
yTo = ystart;
cam_shift = 40;

smooth_value = 10;

normal_y_buffer = 0;
y_buffer = normal_y_buffer;
normal_x_buffer = 0;
x_buffer = normal_x_buffer;

//Set up Screenshake
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;