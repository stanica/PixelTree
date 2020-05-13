/// @description
draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1)
draw_sprite_ext(spr_leaves,global.leaf_type,x,y,1,1,0,image_blend,1)

draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tree_gen)
draw_text(x+10,y-4,text)