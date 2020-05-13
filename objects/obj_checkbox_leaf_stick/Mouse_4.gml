/// @description
image_speed=0
if global.leaf_stick=true{
		global.leaf_stick=false
		image_index=0
	}else{
		global.leaf_stick=true
		image_index=1
	}
	
	with(obj_tree_gen){event_user(2)}