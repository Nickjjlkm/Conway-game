/// @description Insert description here
// You can write your code in this editor
// Or using nested loops
/*cuadricula = [];
for (var i = 0; i < celdas_h; i++) {
    cuadricula[i] = [];
    for (var j = 0; j < celdas_w; j++) {
        cuadricula[i][j] = false;
    }
}
cuadricula[8][11] = true;*/
if (keyboard_check_pressed(ord("P"))){
	pause = !pause
}
if (mouse_check_button_pressed(mb_left)){
	mx = floor(mouse_x/division)
	my = floor(mouse_y/division)
	cuadricula[my][mx] = !cuadricula[my][mx]
}
if (!pause){
	cuadricula2 = [];
	for (var i = 0; i < celdas_h; i++) {
	    cuadricula2[i] = [];
	    for (var j = 0; j < celdas_w; j++) {
	        cuadricula2[i][j] = false;
	    }
	}
	//Lógica del juego
	
	for (var i = 0; i < celdas_h; i++) {
	    for (var j = 0; j < celdas_w; j++) {
			vecinos = 0 
			if(cuadricula[i][modulo((j-1), celdas_w)]){
				vecinos += 1
				
			}
			if(cuadricula[modulo((i-1), celdas_h)][modulo((j-1), celdas_w)]){
				vecinos += 1
				
			}
			if(cuadricula[modulo((i-1), celdas_h)][j]){
				vecinos += 1
				
			}
			if(cuadricula[modulo((i-1), celdas_h)][modulo((j+1), celdas_w)]){
				vecinos += 1
				
			}
			if(cuadricula[i][modulo((j+1), celdas_w)]){
				vecinos += 1
				
			}
			if(cuadricula[modulo((i+1), celdas_h)][modulo((j+1), celdas_w)]){
				vecinos += 1
				
			}
			if(cuadricula[modulo((i+1), celdas_h)][j]){
				vecinos += 1
				
			}
			if(cuadricula[modulo((i+1), celdas_h)][modulo((j-1), celdas_w)]){
				vecinos += 1
	
			}
			if (vecinos == 3){
				cuadricula2[i][j] = true	
			}
			if (vecinos == 2){
				cuadricula2[i][j] = cuadricula[i][j]	
			}
			if (vecinos < 2 || vecinos > 3){
				cuadricula2[i][j] = false	
			}
	    }
	}
	//Fin lógica del juego
	for (var i = 0; i < celdas_h; i++) {
	    for (var j = 0; j < celdas_w; j++) {
	        cuadricula[i][j] = cuadricula2[i][j]
	    }
	}
}