/// @description clean up
for (var i=0; i<ds_list_size(tree); i++){
	ds_map_clear(ds_list_find_value(tree,i))
	ds_map_destroy(ds_list_find_value(tree,i))
}
ds_list_clear(tree)
ds_list_destroy(tree)
surface_free(surf)
surf=-1
room_restart()