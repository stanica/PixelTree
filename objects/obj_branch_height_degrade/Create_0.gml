/// @description
text="Length Taper"

d=200
min_val=0.5
val=(global.height_degrade-min_val)*d
s=instance_create_depth(x+val,y,-1,obj_slider_handle)
s.m=id