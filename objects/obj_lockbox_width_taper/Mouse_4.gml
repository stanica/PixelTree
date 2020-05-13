/// @description
image_speed=0
if global.width_degrade_lock=true{
		global.width_degrade_lock=false
		image_index=0
	}else{
		global.width_degrade_lock=true
		image_index=1
	}