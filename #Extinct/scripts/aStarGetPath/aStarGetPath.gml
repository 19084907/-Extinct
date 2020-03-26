//creates a path from(startX startY) to (endX, endY)
//param0 = startX : starting x position
//param1 = startY : starting y position
//param2 = endX : ending x position
//param3 = endY : ending y position

//NOTE : Inputs are in terms of room positions.
//all other positions will be in  terms of grid.

var startRoomX=argument0;
var startRoomY=argument1;
var endRoomX=argument2;
var endRoomY=argument3;


//_____PRE-ALGOR______
//convert vars into grid
startX=startRoomX div obj_Astar.blockSize;
startY=startRoomY div obj_Astar.blockSize;
endX=endRoomX div obj_Astar.blockSize;  //this is coord of mouse clickX
endY=endRoomY div obj_Astar.blockSize;//this is coord of mouse clickY

//create datastructures
G=ds_map_create();
H=ds_map_create();
F=ds_priority_create();
P=ds_map_create();
C=ds_list_create();

//init first G value
ds_map_add(G, getKey(startX,startY),0); //id, key, value




//_____ALGOR_______
searching=true;
curX=startX;
curY=startY;
while(searching) {
	processCurrentNode();
}

var path=-1;
if(found) {
	path=path_add();
	var curNode=getKey(endX,endY);
	while(curNode != getKey(startX,startY)) {
			path_add_point(path,getKeyX(curNode)*obj_Astar.blockSize,
			 getKeyY(curNode)*obj_Astar.blockSize, 100);
			curNode=ds_map_find_value(P, curNode);
	}
	path_add_point(path, startX*obj_Astar.blockSize, startY*obj_Astar.blockSize,100);
	path_reverse(path);
	path_set_closed(path,false);
}

//_____POST-ALGOR_____
//destroy datastructures
ds_map_destroy(G);
ds_map_destroy(H);
ds_priority_destroy(F);
ds_map_destroy(P);
ds_list_destroy(C);

//returnm our result
return path;