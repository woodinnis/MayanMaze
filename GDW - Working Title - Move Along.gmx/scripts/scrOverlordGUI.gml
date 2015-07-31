if((room != room_menuLarge) && (room != room_LvlSelect))
{  
    HUDBottom = (room_height * 0.08);
 
    // Check for and set display
    if(font_exists(font_Fiesta))
    {
        draw_set_font(font_Fiesta);
    }
    
    // Draw a countdown timer for the player to start walking
    if(canWalk == false && newStart == true && isPaused == false)
    {   
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);
        
        draw_text_colour(room_width/2, (room_height/4) * 3, "Start In " + string(ceil(objPlayer.alarm[0]/room_speed)),colourText, colourText, colourText2, colourText2, 1);
    }

    
    // Draw buttons
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
//    draw_sprite(sprResetBtn, 0, x + 20, room_height - 40);

    if(isPaused == true)
    {
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);
        // Draw background image
        draw_sprite(sprMayaFace,0, view_wview[0]/2,view_hview[0]/3);
    }
}

msgPaneX = (room_width/3);
msgPaneY = (room_height/3);

msgX = (room_width/2);
msgY = msgPaneY + 10


