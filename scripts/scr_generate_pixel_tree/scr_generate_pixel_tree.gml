tree=ds_list_create()
surf=-1

#region trunk
var order=0
var curve=80+random(20)
var width=global.trunk_width
var length=random(4)+4//
var x1=x
var y1=y
var x2=x1+lengthdir_x(length,curve)
var y2=y1+lengthdir_y(length,curve)
for (var i=0; i<trunk_length;i++){
	var new_branch=ds_map_create()
		new_branch[? b.x1]=x1
		new_branch[? b.y1]=y1
		new_branch[? b.x2]=x2
		new_branch[? b.y2]=y2
		new_branch[? b.curve]=curve
		new_branch[? b.length]=length
		new_branch[? b.width]=width
		new_branch[? b.done]=false
		new_branch[? b.leaf_radius]=leaf_min_size+random(leaf_size_range)
		new_branch[? b.order]=order
		if (random(100)>branch_chance)or(order<2){new_branch[? b.done]=true}//prevents the branch from making sub branches
		if i>trunk_length-2{new_branch[? b.done]=false}//last 2 segment must branch
	ds_list_add(tree,new_branch)
	ds_list_mark_as_map(tree,ds_list_size(tree)-1)
	curve+=random(branch_bend_amount)*choose(1,-1)
	order+=1
	branch_chance+=branch_chance_grow
	width=width*branch_width_degrade
	if width<1{width=1}
	//length=length*branch_length_degrade
	x1=x2
	y1=y2
	x2=x1+lengthdir_x(length,curve)
	y2=y1+lengthdir_y(length,curve)
}
#endregion

#region branches
var count=0
var max_count=3
repeat(max_count){// increasing this increases the number of times branches can split.
	count=0
	var size=ds_list_size(tree)
	for (var j=0; j<size; j++){
		var _b=ds_list_find_value(tree,j)
		if _b[? b.done]=false{
			_b[? b.done]=choose(true,false)
			var curve=_b[? b.curve]+((branch_fork_min+random(branch_fork_range))*choose(1,-1))
			var length=_b[? b.length]
			var width=_b[? b.width]/2
			if width<1{width=1}
			var order=_b[? b.order]
			var x1=_b[? b.x2]
			var y1=_b[? b.y2]
			var x2=x1+lengthdir_x(length,curve)
			var y2=y1+lengthdir_y(length,curve)
			for (var i=0; i<branch_length;i++){
				var new_branch=ds_map_create()
					new_branch[? b.x1]=x1
					new_branch[? b.y1]=y1
					new_branch[? b.x2]=x2
					new_branch[? b.y2]=y2
					new_branch[? b.curve]=curve
					new_branch[? b.length]=length
					new_branch[? b.width]=width
					new_branch[? b.done]=false
					new_branch[? b.leaf_radius]=leaf_min_size+random(leaf_size_range)
					new_branch[? b.order]=order+1
					if random(100)>branch_chance{new_branch[? b.done]=true}
					if (j=size)or(count=max_count){new_branch[? b.done]=false}//force leaves on the end of branches
				ds_list_add(tree,new_branch)
				ds_list_mark_as_map(tree,ds_list_size(tree)-1)
				curve+=random(branch_bend_amount)*choose(1,-1)
				order+=1
				width=width*branch_width_degrade
				if width<1{width=1}
				length=length*branch_length_degrade
				x1=x2
				y1=y2
				x2=x1+lengthdir_x(length,curve)
				y2=y1+lengthdir_y(length,curve)
			}
		}
	}
}
#endregion

#region draw to surface
scr_draw_tree()
#endregion

//enums. :D
enum b{
	x1,
	y1,
	x2,
	y2,
	curve,
	width,
	length,
	leaf_radius,
	done,
	order
}