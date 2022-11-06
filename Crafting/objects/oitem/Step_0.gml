/// @description Insert description here
// You can write your code in this editor
if (!collected && place_meeting(x,y,oPlayer))

{
	
	collected = true;
}

if (collected)
{
	image_alpha -= 0.05;
	y -= 0.5;
	
	if (image_alpha <0.1){
		instance_destroy();
	}
}