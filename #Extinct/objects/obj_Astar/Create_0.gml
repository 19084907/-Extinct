/// @description Insert description here
// You can write your code in this editor
fieldGenerated = false;

blockSize = 128;

fieldWidth = ceil(room_width/blockSize);//how many columns
fieldHeight = ceil(room_height/blockSize);//how many rows.

for(var i = 0; i<fieldWidth;i++) {
	for(var j = 0; j<fieldHeight;j++) {
			walkable[i,j] = true; //column, row.
	}//where is walkable[] var declared?
}

for (var i = 8; i < 17; i++){
	walkable[i,6] = false;	
}

for (var i = 8; i < 18; i++) {
	walkable[i,7] = false;	
}
/*
walkable[7,2] = false;
walkable[7,3] = false;
walkable[7,5] = false;
walkable[7,6] = false;
walkable[7,7] = false;
*/