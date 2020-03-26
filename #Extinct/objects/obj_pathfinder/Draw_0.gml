/// @description Insert description here
// You can write your code in this editor
draw_self();
//path_index is system variable
//draw path elements
/*
if (path_get_number(path_index)>=2) {
	//draw path
	draw_set_color(c_blue);
	var temp = path_get_number(path_index);//returns number of points on path
	for(var i = 0; i<temp-1;i++) {
		draw_line(
			path_get_point_x(path_index,i) + .5*obj_Astar.blockSize,
			path_get_point_y(path_index,i) + .5*obj_Astar.blockSize,
			path_get_point_x(path_index,i+1) + .5*obj_Astar.blockSize,
			path_get_point_y(path_index,i+1) + .5*obj_Astar.blockSize
			);
	}
	
	//draw starting and ending point
	draw_set_color(c_green);//sets base color for drawing functions
	draw_circle(path_get_point_x(path_index,0)+.5*obj_Astar.blockSize,
		path_get_point_y(path_index,0)+.5*obj_Astar.blockSize,5,false);
	draw_set_color(c_red);
	
	//****not drawing end red circle!
	draw_circle(path_get_point_x(path_index,path_get_number(path_index)-1 +.5*obj_Astar.blockSize),
		path_get_point_y(path_index,path_get_number(path_index)-1+.5*obj_Astar.blockSize),5,false);
		}
		
		*//**/