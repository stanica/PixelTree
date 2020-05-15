/// @description Tree Generator
randomize()
minX=x
minY=y
maxX=x
maxY=y
#region config
//these values are pulled from the sliders on screen.
branch_chance=global.branch_amount
branch_bend_amount=global.branch_bend_amount
branch_fork_range=global.branch_forks
branch_width_degrade=global.width_degrade
branch_length_degrade=global.height_degrade
leaf_hue=global.leaf_hue
trunk_length=global.trunk_height
branch_length=global.branch_length
//branch_h=global.trunk_hue
leaf_size_range=(random(6)+6)+global.leaf_density
leaf_density=global.leaf_density

//These are less important, but still configurable if you want.
// I did not make sliders for them.
branch_fork_min=10
branch_chance_grow=1
leaf_min_size=4
//branch_s=random(255)
//branch_v=random(128)+127
#endregion
scr_generate_pixel_tree()







