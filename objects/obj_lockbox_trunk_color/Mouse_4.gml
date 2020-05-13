/// @description
image_speed=0
if global.trunk_hue_lock=true{
		global.trunk_hue_lock=false
		image_index=0
	}else{
		global.trunk_hue_lock=true
		image_index=1
	}