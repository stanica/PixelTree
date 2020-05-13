/// @description
image_speed=0
if global.leaf_hue_lock=true{
		global.leaf_hue_lock=false
		image_index=0
	}else{
		global.leaf_hue_lock=true
		image_index=1
	}