/// @description
draw_surface(surf,0,0)
draw_rectangle(minX,minY,maxX,maxY,true)

draw_set_halign(fa_left)
draw_text(minX,maxY+8,""+string(round(maxX-minX))+" x "+string(round(maxY-minY)))