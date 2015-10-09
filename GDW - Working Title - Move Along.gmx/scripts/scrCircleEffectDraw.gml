///Draw the circle
if ready = 0
    exit;
//Draw the circle sprite
draw_sprite_ext(sprite_index,0,x,y,scale,scale,0,c_white,1);

//Now draw black rectangles on all 4 sides of the sprite to make the rest of the screen black

//Top part
draw_rectangle_colour(view_xview[0]-1,view_yview[0]-1,view_xview[0]+view_wview[0],bbox_top,0,0,0,0,0);
//bottom part
draw_rectangle_colour(view_xview[0]-1,bbox_bottom,view_xview[0]+view_wview[0],view_yview[0]+view_hview[0],0,0,0,0,0);
//left part
draw_rectangle_colour(view_xview[0]-1,bbox_top,bbox_left,bbox_bottom,0,0,0,0,0);
//right part
draw_rectangle_colour(bbox_right,bbox_top,view_xview[0]+view_wview[0],bbox_bottom,0,0,0,0,0);

//If the sprite gets too small it disappears for some reason and leaves a "window" where you
//can see what's behind it. To prevent this, draw a small black square over the sprite once it gets really small
if scale < 0.25
    draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,0,0,0,0,0);
