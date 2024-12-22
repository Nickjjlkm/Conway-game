/// @description Insert description here
// You can write your code in this editor
division = 32 
celdas_h = room_height/division
celdas_w = room_width/division
cuadricula = [];
for (var i = 0; i < celdas_h; i++) {
    cuadricula[i] = [];
    for (var j = 0; j < celdas_w; j++) {
        cuadricula[i][j] = false;
    }
}
pause = true	  
