// Continue the game

if(objOverlord.isPaused == true)
{
    // Resume normal game functions
    instance_activate_all();
    objOverlord.isPaused = false;
    
    // Resume walking sound
    if(audio_is_paused(sndPlayerWalk))
    {
        audio_resume_sound(sndPlayerWalk)
    }
    
    // Resume game music
    if(audio_is_paused(sndBGMusicGame))
    {
        audio_resume_sound(sndBGMusicGame);
    }
}

if(objOverlord.gameState == 2)
    FuncRoomNext();

// Destroy all buttons on screen
with(objButtonParent)
    instance_destroy();

