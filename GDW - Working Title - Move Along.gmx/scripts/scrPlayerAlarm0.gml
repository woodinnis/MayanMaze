// Verify player is in a playable room
if(room != roomEditor)
{
    // Set speed and start walking
    speed = playerSpeed;

    objOverlord.canWalk = true;
    objOverlord.newStart = false;
    // Play walking sound
    audio_play_sound(sndPlayerWalk, 18, true);

    // Set animation speed
    image_speed = 0.07
}