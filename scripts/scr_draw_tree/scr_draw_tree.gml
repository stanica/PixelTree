if surface_exists(surf){
	surface_free(surf)
}

if !surface_exists(surf){
	surf=surface_create(room_width,room_height)
	surface_set_target(surf)
	draw_clear_alpha(c_black,0)
	
	var s=color_get_saturation(global.leaf_color)
	var v=color_get_value(global.leaf_color)
	var h = color_get_hue(global.leaf_color)

	for (var i=0; i<ds_list_size(tree); i++){
		var _b=ds_list_find_value(tree,i)
		
		draw_set_color(make_color_hsv(color_get_hue(global.trunk_color),color_get_saturation(global.trunk_color),color_get_value(global.trunk_color)*0.8))
		draw_line_width(_b[? b.x1],_b[? b.y1],_b[? b.x2],_b[? b.y2],_b[? b.width])
		draw_set_color(make_color_hsv(color_get_hue(global.trunk_color),color_get_saturation(global.trunk_color),color_get_value(global.trunk_color)))
		draw_line_width(_b[? b.x1]+_b[? b.width]/2,_b[? b.y1],_b[? b.x2]+_b[? b.width]/2,_b[? b.y2],_b[? b.width]/2)
	
		scr_check_ranges(_b[? b.x1],_b[? b.y1])
		scr_check_ranges(_b[? b.x2],_b[? b.y2])
	
	
		if (_b[? b.done]=false)and(_b[? b.order]>4){
			repeat(_b[? b.leaf_radius]*global.leaf_density){
				
				if global.leaf_stick=true{
					var _d=point_direction(_b[? b.x2],_b[? b.y2],_b[? b.x1],_b[? b.y1])
					var _l=random(point_distance(_b[? b.x1],_b[? b.y1],_b[? b.x2],_b[? b.y2]))
				}else{
					var _d=random(360)
					var _l=random(_b[? b.leaf_radius])
				}

				var _d_leaf=point_direction(_b[? b.x1],_b[? b.y1],_b[? b.x2],_b[? b.y2])//+(choose(1,-1)*90)
				_d_leaf+=(random(global.leaf_rot)*choose(1,-1))
				
				draw_set_color(make_color_hsv(h,s,v))
				draw_sprite_ext(spr_leaves,global.leaf_type,_b[? b.x2]+lengthdir_x(_l,_d),_b[? b.y2]+lengthdir_y(_l,_d),1,1,_d_leaf,make_color_hsv(h,s,v),1)
				scr_check_ranges(_b[? b.x2]+lengthdir_x(_l,_d),_b[? b.y2]+lengthdir_y(_l,_d))

				s-=1 if s<128{s=color_get_saturation(global.leaf_color)}
				v-=1 if v<128{v=color_get_value(global.leaf_color)}
			
			}
		}
	}
	surface_reset_target()
}