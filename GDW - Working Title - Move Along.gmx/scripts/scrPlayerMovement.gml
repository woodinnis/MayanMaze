// Set variables

// Verify player is in a playable room
if(room != roomEditor)
{
    // Set moveSpeed to playerSpeed or 0 based on True/False state of canWalk
    if(objOverlord.canWalk == true)
    {
        speed = playerSpeed; // True
        
        // If player walks over an arrow tile
        if (place_meeting(x,y,objArrowParent))
        {
             // Snap to x,y of arrow tile and change direction
             theArrow = instance_place(x,y,objArrowParent);
             if (x < theArrow.x + buffer && x > theArrow.x - buffer)
             {
                if (y < theArrow.y + buffer && y > theArrow.y - buffer)
                 {
                     move_snap(sprite_width,sprite_height);
                     direction = theArrow.direction;
                     audio_play_sound(sndArrowTouch, 100, false);   
                 } 
             }
        }
       
        // If player hits a wall
        if (place_meeting(x,y,objWall))
        {
            // Play a sound        
            audio_play_sound(sndWall,90,false);
            
            // Snap to closest x,y
            x = xprevious;
            y = yprevious;
            move_snap(sprite_width, sprite_height);
            
            // Reverse direction on impact
            switch(direction)
            {
                case 0:
                {
                    direction = 180;
                    break;
                }
                case 90:
                {
                    direction = 270;
                    break;
                }
                case 180:
                {
                    direction = 0;
                    break;
                }
                case 270:
                {
                    direction = 90;
                    break;
                }
            }
                      
        }
        
        // Player encounters a hole anywhere on the map
        if(place_meeting(x,y,objHole))
        {
            theHole = instance_place(x,y,objHole)
            
            if (x < theHole.x + buffer && x > theHole.x - buffer)
            {
                if (y < theHole.y + buffer && y > theHole.y - buffer)
                {
                    // Snap player to the x,y coordinates of the hole
                    move_snap(sprite_width,sprite_height);             
                    
                    // Stop player movement, and set to invisible                
                    objPlayer.visible = false;
                    objOverlord.canWalk = false;
                    speed = 0;
                    
                    // Play a sound
                    audio_play_sound(sndHole,80,false);
                                   
                    // Pause the game 
                    with(objPauseBtn)
                    {
                        event_user(0);
                    }                   
                }// Hole.y 
            }//Hole.x 
        }// Meet Hole
    
        // If player walks through a door    
        if(place_meeting(x,y,objDoor))
        {
            // Snap to x,y of door
            move_snap(sprite_width,sprite_height);
            
            // Play door sound
            audio_play_sound(sndDoor,70,false);
            
            // Move to next room
            if(room_exists(room_next(room)))
            {            
                surface_reset_target();          
                
                // Perform room transition
                objOverlord.gameState = 2;
                objOverlord.canWalk = false;
                image_speed = 0;
            }
        }
    }
}
