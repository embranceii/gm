/// @description Insert description here
// You can write your code in this editor
rotation = lerp(rotation,45,0.1);

image_angle = rotation * oPlayer.image_xscale;

var _mousePress = mouse_check_button(mb_left);

var _breakable = instance_position (mouse_x,mouse_y,oBreakableParent); 

with (_breakable) 
{
	var _dist = distance_to_object(oPlayer);
	if (_dist < other.breakDistance){
		other.selectorInst = id;
		if(other.cooldown ==0 && _mousePress){
			hp--;
			other.rotation = -80;
			other.cooldown = 20;
		}
	}
}
if (cooldown > 0)cooldown--;
			