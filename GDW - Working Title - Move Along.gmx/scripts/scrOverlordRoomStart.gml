// Events to perform at the beginning of rooms

// Clear tiles used at the beginning of each room
tilesUsed = 0;

// Check current room
if(room == room_menuLarge)
{
    // Set Variables
    startXOffset = sprite_get_width(sprGameStartBtn) / 2;
    
    quitXOffset = sprite_get_width(sprQuitBtn) / 2;
    quitYOffset = sprite_get_height(sprQuitBtn) / 2;
    
    // Level Select Button
    instance_create((room_width / 4) - quitXOffset, ((room_height / 3) * 2) - quitYOffset, objLvlSelectBtn);
        
    // Quit Button
    instance_create(((room_width / 4) * 3) - quitXOffset, ((room_height / 3) * 2) - quitYOffset, objQuitBtn);
      
    // Start Button
    instance_create(room_width / 2 - startXOffset, (room_height / 3) * 2, objGameStartBtn);

    // Stop the main game background music if it is currently playing
    if(audio_is_playing(sndBGMusicGame))
    {            
        audio_stop_sound(sndBGMusicGame);
    }      

    // If menu music is available to play, begin playing it
    if(sound_exists(sndBGMusicMenu))
    {
        if(!audio_is_playing(sndBGMusicMenu))
        {            
            audio_play_sound(sndBGMusicMenu,1,true);
        }
    }
}
else if(room == room_LvlSelect)
{    
    // If menu music is available to play, begin playing it
    if(sound_exists(sndBGMusicMenu))
    {
        if(!audio_is_playing(sndBGMusicMenu))
        {            
            audio_play_sound(sndBGMusicMenu,1,true);
        }
    }
}
else
{    
    // Stop the Main Menu background music if it is currently playing 
    if(audio_is_playing(sndBGMusicMenu))
    {
        audio_stop_sound(sndBGMusicMenu);
    }
    
    // If game music is available to play, begin playing it
    if(sound_exists(sndBGMusicGame))
    {                    
        audio_play_sound(sndBGMusicGame,2,true);   
    }
}

// Create Pause and Fast Forward Buttons

if(room != room_menuLarge && room != room_LvlSelect)
{
    pauseBtnX = (room_width/3) - sprite_get_width(sprPauseBtn)/2;
    FFBtnX = (room_width/3) * 2 - sprite_get_width(sprFFBtn)/2;
    
    instance_create(pauseBtnX, room_height - 40 ,objPauseBtn);
    instance_create(FFBtnX, room_height - 40 ,objFFbtn);
}
