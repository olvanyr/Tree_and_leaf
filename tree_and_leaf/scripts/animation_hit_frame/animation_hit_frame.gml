///@arg frame

// beacause in GMS2 we have a sprite animation speed (like the one you edit inside the sprite pannel 15 by default) and a game speed (30 by default)
// so you end up with strange image index, like if your image speed is 0.5 for a sprite animation speed of 15 and a 
// game speed at 30, you end up with   0.5*(15/30) so you actualy have 0.25 animation frame every game frame (sound logique no ?)
// you will see 4 time the same image beffor it go to the next one


var _frame = argument0
var _frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
return image_index >= _frame && image_index < _frame + _frame_range;