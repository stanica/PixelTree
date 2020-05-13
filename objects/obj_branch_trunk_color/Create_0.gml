/// @description
text="Trunk Color"

d=2
min_val=0
val=(global.trunk_hue-min_val)*d
s=instance_create_depth(x+val,y,-1,obj_slider_handle)
s.m=id