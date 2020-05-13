/// @description
text="Trunk Length"

d=10
min_val=1
val=(global.trunk_height-min_val)*d
s=instance_create_depth(x+val,y,-1,obj_slider_handle)
s.m=id