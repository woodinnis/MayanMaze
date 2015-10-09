
// Check for Paused state
if(objOverlord.isPaused == false)
{
    instance_deactivate_object(objPlayer)
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(font_Fiesta);

    // Create instance of a restart button
    restartBtn = instance_create((room_width/4) - sprite_get_width(sprMenu)/2, room_height/2 + 150, objRestartBtn);
    
    // Create instance of a menu button    
    menuBtn = instance_create((room_width/2) - sprite_get_width(sprMenuBtn)/2, room_height/2 + 175, objMenuBtn);
    
    // Create instance of a quit button
    continueBtn = instance_create(room_width/4 * 3 - sprite_get_width(sprMenu)/2, room_height/2 + 150, objContinueBtn);

    // Pause walking sound when game pauses
    if(audio_is_playing(sndPlayerWalk))
    {
        audio_pause_sound(sndPlayerWalk)
    }

    // Pause game music when game pauses    
    if(audio_is_playing(sndBGMusicGame))
    {
        audio_pause_sound(sndBGMusicGame);
    }
    
    // Set Paused state to true   
    objOverlord.isPaused = true;
}
else
{
    // The Alarm[0] script for the Continue button will unpause the game.
    scrContinueBtnAlarm0();
}

// Play the Pause sound
// audio_play_sound(sndPlayerStart,10,false);