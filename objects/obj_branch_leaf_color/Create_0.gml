/// @description
text="Leaf Color"

d=0.4
min_val=0
val=(global.leaf_hue-min_val)*d
s=instance_create_depth(x+val,y,-1,obj_slider_handle)
s.m=id