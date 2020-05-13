/// @description
var rand=irandom(1000000000)
file=get_save_filename(".png","tree"+string(rand)+".png")
if file !=""{
	surface_save_part(surf,file,minX,minY,maxX-minX,maxY-minY)
}
