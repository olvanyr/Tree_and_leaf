///@description check the input
function get_input() {

	//move
	right = keyboard_check(vk_right);
	left = keyboard_check(vk_left);
	jump = keyboard_check_pressed(vk_up);
	if keyboard_check_pressed(vk_space) jump = 1;
	if keyboard_check_pressed(ord("Z")) jump = 1;
	if keyboard_check_pressed(ord("Q")) left = 1;
	if keyboard_check_pressed(ord("d")) right = 1;

	//gamepad
	if gamepad_button_check_pressed(0,gp_face1) jump = 1;

	if (abs(gamepad_axis_value(0,gp_axislh)) > 0.1)
	{
		if (abs(min(gamepad_axis_value(0,gp_axislh),0)) > 0.7)	left = 1;
		
		else left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	
		if (max(gamepad_axis_value(0,gp_axislh),0) > 0.7) right = 1;
		
		else right = max(gamepad_axis_value(0, gp_axislh),0);
	}


}
