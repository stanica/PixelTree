/// @description
image_speed=0
if global.branch_forks_lock=true{
		global.branch_forks_lock=false
		image_index=0
	}else{
		global.branch_forks_lock=true
		image_index=1
	}