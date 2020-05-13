/// @description
image_speed=0
if global.leaf_lock=true{
		global.leaf_lock=false
		image_index=0
	}else{
		global.leaf_lock=true
		image_index=1
	}