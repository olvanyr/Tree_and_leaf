y += vsp;

vsp *= 0.9;


alpha -= fading;

image_alpha = alpha;

if alpha <= 0 
{
	instance_destroy();
}