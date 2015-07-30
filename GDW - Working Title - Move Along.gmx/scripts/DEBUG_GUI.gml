if(debug)
{
    draw_set_font(font_debug);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text(10,40,"DEBUG MODE");
    if(instance_exists(objPlayer))
        draw_text(10,52,"Player Speed: " + string(objPlayer.speed));
    
    draw_text(10,64,"Tile Count: " + string(objOverlord.tilesUsed));
}
