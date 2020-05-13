/// @description
text="Branch Forks Amount"

d=1
min_val=0
val=(global.branch_forks-min_val)*d
s=instance_create_depth(x+val,y,-1,obj_slider_handle)
s.m=id