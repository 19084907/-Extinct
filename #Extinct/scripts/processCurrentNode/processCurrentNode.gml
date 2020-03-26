//runs Astar process on current node

//add to closed list
ds_list_add(C,getKey(curX,curY));//C is a list
//ex : 65
//analyze adjacent blocks/grid locations
var distFromStartToCurrent = ds_map_find_value(G, getKey(curX,curY)); //id of map, key value = 0
//returns undefined if key does not exist.

//G is init with 0, but where are other G values entered?
for (var i = max(0,curX-1); i<=min(obj_Astar.fieldWidth-1, curX+1); i++) 
{//ex : i < 2
	//show_debug_message("reached here!");
	for (var j=max(0,curY-1); j<min(obj_Astar.fieldHeight-1,curY+2); j++) 
	{//ex : j < 3
		if(i==curX && j==curY)
			continue;
		//show_debug_message("reached here!!!");
		var closed=ds_list_find_index(C,getKey(i,j)) != -1; // ex : key = 65. freturns -1 if key not found.
		var diagonal = ((i+j)%2 == (curX+curY)%2);//diagonal if both even or odd.
		var canWalk = false;
		var distFromCurrentToIJ = 0;
		if (diagonal) 
		{
			canWalk = obj_Astar.walkable[i,j] &&
					obj_Astar.walkable[curX,j] &&
					obj_Astar.walkable[i,curY];
					distFromCurrentToIJ = 1.414;
					//show_debug_message("reached here!");
		} //end if
		else
		{
			canWalk = obj_Astar.walkable[i,j];
			distFromCurrentToIJ = 1;
			//show_debug_message("reached here no diagonal");
		} //end else
			if (!closed && canWalk) {
				//calculated G,H and F
					var tempG = distFromStartToCurrent + distFromCurrentToIJ;
					var tempH = abs(i-endX) + abs(j-endY);//manhattan distance to end
					//note : you could also use point_distance(i,j,endX,endY);
					var tempF = tempG + tempH;
					//update if necessary
					var processed = ds_map_exists(G, getKey(i,j));
					//show_debug_message("reached here!");
					//getting here!!!
						if(processed) {
							//show_debug_message("reached here!");
							var lowerG = ds_map_find_value(G,getKey(i,j)) < tempG; 
							//show_debug_message(lowerG); 
							
								if(lowerG) {
									ds_map_replace(G,getKey(i,j),tempG);
									ds_map_replace(H,getKey(i,j),tempH);
									ds_priority_change_priority(F,getKey(i,j),tempF);
									ds_map_replace(P,getKey(i,j),getKey(curX,curY));
									//show_debug_message("reached here!");
								} 
						}//end if
							else { //this is where add key/create G,H,F,P!!!!
								ds_map_add(G,getKey(i,j),tempG);
								ds_map_add(H,getKey(i,j),tempH);
								ds_priority_add(F,getKey(i,j),tempF);
								ds_map_add(P,getKey(i,j),getKey(curX,curY));
								//show_debug_message("reached create values!");
							}
			} // end if 
	} //end 2nd for loop
} //end 1st for loop
//find best option
var minF =-1;
var empty = ds_priority_empty(F);
if (!empty) 
	minF = ds_priority_delete_min(F);
//decide what to do
if (minF == -1) {
	searching = false;
	found = false;
} else {
	curX = getKeyX(minF);
	curY = getKeyY(minF);
}
//check whether we're at the end
if (curX == endX && curY == endY) {
	searching = false;
	found = true;
}

