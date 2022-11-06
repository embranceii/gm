/// @description 


if (hp <= 0) {
	instance_destroy();
	

	var _resCount = choose(1, 1, 1, 1, 2, 2, 3);

	
	var _resMax = array_length(res);
	

	repeat (_resCount) {

		var _resID = irandom(_resMax - 1);
		
		var _res = res[_resID];
		

		var _x = x + irandom_range(-4, 4);
		var _y = y + irandom_range(-4, 4);
		

		with (_inst) {
			type = _res;
			
			sprite_index = global.itemSprite[_res];
			

		}
	}
}