
if global.trunk_height_lock=false{global.trunk_height=2}//0-25
if global.branch_length_lock=false{global.branch_length=10+random(5)}
if global.branch_amount_lock=false{global.branch_amount=15+random(10)}//0-100
if global.branch_bend_amount_lock=false{global.branch_bend_amount=0}//0-10
if global.branch_forks_lock=false{global.branch_forks=30+random(30)} // 0-100
if global.width_degrade_lock=false{global.width_degrade=1}  //0-1
if global.height_degrade_lock=false{global.height_degrade=0.75} //length taper
if global.leaf_density_lock=false{global.leaf_density=1+random(1)}//0-5
if global.trunk_width_lock=false{global.trunk_width=2+random(2)}

if global.trunk_hue_lock=false{global.trunk_hue=16+random(16)}//0-50
if global.leaf_hue_lock=false{global.leaf_hue=random(255)}//0-255

if global.leaf_lock=false{global.leaf_type=0}
if global.leaf_rot_lock=false{global.leaf_rot=random(360)}
if global.leaf_stick_lock=false{global.leaf_stick=false}

if global.leaf_hue_lock=false{global.leaf_color=make_color_hsv(random(255),random(128)+127,random(128)+127)}
if global.trunk_hue_lock=false{global.trunk_color=make_color_hsv(random(255),random(128)+127,random(128)+127)}

if global.loaded=false{
	if global.leaf_hue_lock=false{global.leaf_color=c_lime}
	if global.trunk_hue_lock=false{global.trunk_color=c_orange}
	global.trunk_hue_lock=true//defaults to locked
	global.leaf_hue_lock=true//defaults to locked
	global.leaf_lock=true//defaults to locked
}

global.loaded=true








