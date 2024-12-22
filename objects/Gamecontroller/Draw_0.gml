/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_blue)
for(i = 0;i<celdas_h;i++){
	draw_line(0,division*(i+1),room_width,division*(i+1))
}
for(i = 0;i<celdas_w;i++){
	draw_line(division*(i+1),0,division*(i+1),room_height)
}
draw_set_color(c_white)
draw_text(10,10,floor(mouse_x/division))
draw_text(10,20,floor(mouse_y/division))
for ( i = 0; i<celdas_h;i++){
	for ( j = 0; j<celdas_w;j++){
		if (cuadricula[i][j]){
			draw_rectangle(j*division,i*division,(j+1)*division,(i+1)*division,-1);
		}
	}
}

	