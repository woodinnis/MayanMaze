if(room != roomEditor)
{
    // Tile can be moved
    drag = true;
    
    // Change image transparency for player feedback
    image_alpha = 0.5;
    
    // Increment number of tiles used
    objOverlord.tilesUsed++;
    
    // Set x and y offset for use calculating click & drag coordinates
    xoffset = x - mouse_x;
    yoffset = y - mouse_y;
    
    // Play sound
    audio_play_sound(sndArrowClick, 16, false);
}