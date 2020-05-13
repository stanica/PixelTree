/// @description
text="Branch Length"

d=10
min_val=5
val=(global.branch_length-min_val)*d
s=instance_create_depth(x+val,y,-1,obj_slider_handle)
s.m=id