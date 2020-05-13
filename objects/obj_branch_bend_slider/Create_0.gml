/// @description
text="Branch Curve Amount"

d=5
min_val=1
val=(global.branch_bend_amount-min_val)*d
s=instance_create_depth(x+val,y,-1,obj_slider_handle)
s.m=id