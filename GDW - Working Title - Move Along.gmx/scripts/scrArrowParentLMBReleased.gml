// Tile can no longer be moved
if(mouse_y > 704)
    drag = false;
else
    drag = false;
    
// Stop sound
audio_stop_sound(sndArrowClick);

// Return image to full visibility
image_alpha = 1;

