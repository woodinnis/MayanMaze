if(debug)
{
    draw_set_font(font_debug);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text(10,40,"DEBUG MODE");
    if(instance_exists(objPlayer))
        draw_text(10,52,"Player Speed: " + string(objPlayer.speed));
    
    draw_text(10,64,"Tile Count: " + string(objOverlord.tilesUsed));
    draw_set_halign(fa_center);
    draw_text(10,76,"Center Point: " + string(window_get_width()/2) +", " + string(view_hview[0]/2))
    draw_set_halign(fa_left);
    
    if(instance_exists(sprMayaFace))
        draw_text(10,52,"BG Maya X,Y: " + string(sprMayaFace.x) + "," + string(sprMayaFace.y));
}