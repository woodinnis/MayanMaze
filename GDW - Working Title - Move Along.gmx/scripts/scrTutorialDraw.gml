/* Display a tutorial message on screen for the first four levels
if(!isPaused)   // Hide the message while paused


///////////////////////////////////////////////////
/*                                               */
/*  Below are blocks of obsolete, or unused code */
/*                                               */
/*                                               */
/*                                               */
///////////////////////////////////////////////////



if(tutorialStarted)
{
    draw_set_alpha(1);
    draw_set_colour(c_black);
    draw_set_halign(fa_center);
    //draw_set_valign(fa_middle);
    draw_set_font(font_debug);
    
    switch(room)
    {
        case room_Maze001:
        {                          
            draw_text(msgX, msgY, LEVEL001TUT);
            break;
        }

        case room_Maze002:
        {
            draw_text(msgX, msgY, LEVEL002TUT);
            break;
        }

        case room_Maze003:
        {
            draw_text(msgX, msgY, LEVEL003TUT);
            break;
        }
        case room_Maze004:
        {
            draw_text(msgX, msgY, LEVEL004TUT);
            break;
        }
        
    }
}







/*    
    // Draw a background to make GUI text and images more visible
    draw_set_alpha(0.3);
    draw_rectangle_colour(x, y, room_width, HUDBottom, c_blue, c_blue, c_blue, c_blue, false);
    
    // reset alpha to 100%
    draw_set_alpha(1);
    
    // Draw a black bar at the bottom of the HUD background
    draw_set_colour(c_black);
    draw_rectangle(x, HUDBottom, room_width, HUDBottom + 5, false);
*/    








/*    
    if(guiAlpha > 0 && guiAlpha < 1)
    {
        // Set text colour
        draw_set_colour(c_white);
        
        // Set alignment and draw GUI text
        draw_set_valign(fa_top);
        draw_set_halign(fa_left);
    //    draw_set_alpha(1);
        draw_text(x + 20, y + 20, "Maze Number: " + string(room));
    
    // Attempted to add a room timer. Could not get it working.
    // Will see if I can get it working later.
    
    //    draw_text(x + 20, y + 40, "Time: " + string(timeUsed));
    //    alarm[1] = room_speed * 1;
        
        // Set alignment and draw GUI text
        draw_set_halign(fa_right);
        draw_text(room_width - 20 ,y + 20, "Tiles Moved: " + string(tilesUsed));
    }
*/
