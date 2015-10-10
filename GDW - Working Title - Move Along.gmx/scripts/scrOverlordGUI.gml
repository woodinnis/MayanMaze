if((room != room_menuLarge) && (room != room_LvlSelect) && (room != roomEditor))
{  
    HUDBottom = (room_height * 0.08);
    draw_set_font(FONTsm);

    // Draw a countdown timer for the player to start walking
    if(canWalk == false && newStart == true && isPaused == false)
    {   
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);

        // Draw countdown
//        draw_text_colour(room_width/2, (room_height/4) * 3, "START IN " + string(ceil(objPlayer.alarm[0]/room_speed)),c_white,c_white,c_white,c_white, 1);
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
        draw_sprite_ext(sprMayaFace,0, window_get_width()/2,window_get_height()/3,ROOMSCALE, ROOMSCALE,0,c_white,1);
    }
}

msgPaneX = (room_width/3);
msgPaneY = (room_height/3);

msgX = (room_width/2);
msgY = msgPaneY + 10
