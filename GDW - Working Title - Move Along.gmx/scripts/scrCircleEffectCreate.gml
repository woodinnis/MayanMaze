//A circle that closes in on an object/center of the screen
//It's a persistent object so that we don't have to worry about creating
//another circle effect that zooms out each time a new room starts

//The image is going to zoom in, so its initial size should be VERY big and shrink until it gets very small.
//This is a variable to keep us from having to type "image_xscale/image_yscale" over and over again
scale = 20;

//Delay drawing the circle so that it won't "bloop" into the screen
//this is what "ready" does:
/*
0 = don't draw
1 = zoom in in
2 = zoom out
*/
ready = 0;
alarm[0] = 2;