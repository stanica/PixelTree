/// @description
text="Trunk width"

d=16
min_val=1
val=(global.trunk_width-min_val)*d
s=instance_create_depth(x+val,y,-1,obj_slider_handle)
s.m=id