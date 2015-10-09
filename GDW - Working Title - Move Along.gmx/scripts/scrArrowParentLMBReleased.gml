// Tile can no longer be moved
if(x < 32)
    drag = false;
if(y < 32)
    drag = false;
if(x > 512)
    drag = false;
if(y > 704)
    drag = false;
else
    drag = false;
    
// Stop sound
audio_stop_sound(sndArrowClick);

// Return image to full visibility
image_alpha = 1;