// Set background visibility to represent button-down
// background_visible[1] = true; // not needed after implementation of new menu screen

// Show Button press
image_index = 1;

// Play game start sound
audio_play_sound(sndGameStart,12,false);

// Set alarm time
alarm[0] = .35 * room_speed;