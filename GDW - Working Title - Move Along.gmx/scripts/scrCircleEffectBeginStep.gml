//If it's set to grow, then make it grow. Make it shrink otherwise
if ready = 1
    scale -= 0.5;
else if ready = 2
    scale += 0.5;
//This makes it stick in the center of the screen. You can replace this with
//whatever object you want it to zoom in on

// Grow out from the player
if(ready == 2)
{
    if(instance_exists(objPlayer))
    {
        x = objPlayer.x;
        y = objPlayer.y;
    }
    else
    {
        x = (view_xview[0]+view_wview[0])/2;
        y = (view_yview[0]+view_hview[0])/2;
    }
}
// Shrink down over the door
else if(ready == 1)
{
    if(instance_exists(objDoor))
    {
        x = objDoor.x;
        y = objDoor.y;
    }
    else
    {
        x = (view_xview[0]+view_wview[0])/2;
        y = (view_yview[0]+view_hview[0])/2;
    }
}

//Make image_xscale and image_yscale equal "scale"
//This is so that the sprite's bounding box will grow/shrink too
image_xscale = scale;
image_yscale = scale;

//Makes the image stay small but keeps it big enough so that it'll keep drawing the black screen
if scale <= 0
    scale = 0.05;

//If it's growing and it's bigger than the screen, destroy it
if ready = 2 && image_xscale > 21
    instance_destroy();
