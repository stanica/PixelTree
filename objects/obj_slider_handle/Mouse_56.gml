/// @description
if grab=1{
	grab=0
	
	if redraw=false{
		if global.regen_on_change{
			with(obj_tree_gen){event_user(0)}
		}
	}else{
		with(m){event_user(0)}
	}

}
