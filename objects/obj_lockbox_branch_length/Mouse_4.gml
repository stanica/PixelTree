/// @description
image_speed=0
if global.branch_length_lock=true{
		global.branch_length_lock=false
		image_index=0
	}else{
		global.branch_length_lock=true
		image_index=1
	}