/// @description
image_speed=0
if global.height_degrade_lock=true{
		global.height_degrade_lock=false
		image_index=0
	}else{
		global.height_degrade_lock=true
		image_index=1
	}