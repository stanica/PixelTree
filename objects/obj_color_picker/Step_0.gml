/// @description

color=surface_getpixel(surf,mouse_x-x,mouse_y-y)
m.image_blend=color

if (!surface_exists(surf))or(mouse_check_button_released(mb_left)){
	m.picker=-1
	surface_free(surf)
	with(obj_tree_gen){event_user(2)}
	instance_destroy()
}
