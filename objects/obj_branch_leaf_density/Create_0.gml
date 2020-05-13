/// @description
text="Leaf Density"

d=25
min_val=0
val=(global.leaf_density-min_val)*d
s=instance_create_depth(x+val,y,-1,obj_slider_handle)
s.m=id
s.redraw=true