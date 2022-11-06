/// @description Insert description here
// You can write your code in this editor
if (hp<hpMax)
{
	var _y = bbox_bottom +1;
	
	var _amount = hp/hpMax;
	
	draw_set_color(hpColor);
	draw_rectangle(bbox_left,_y,bbox_left + sprite_width * _amount,_y + hpHeight,0);
	draw_set_color(-1);
	
	draw_rectangle(bbox_left, _y,bbox_right, _y + hpHeight,1);
}



