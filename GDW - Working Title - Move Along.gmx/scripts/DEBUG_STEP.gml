if(debug)
{
    // All player-related debug funtions
    if(instance_exists(objPlayer))
    {
        // Adjust player speed
        if(keyboard_check_pressed(vk_up))
        {
            objPlayer.playerSpeed += 2 ;
        }
        if(keyboard_check_pressed(vk_down))
        {
            objPlayer.playerSpeed -= 2 ;
        }
        
        // Adjust player direction
        if(keyboard_check_pressed(ord("L")))
        {
            objPlayer.direction = 0;
        }
        if(keyboard_check_pressed(ord("I")))
        {
            objPlayer.direction = 90;
        }
        if(keyboard_check_pressed(ord("J")))
        {
            objPlayer.direction = 180;
        }
        if(keyboard_check_pressed(ord("K")))
        {
            objPlayer.direction = 270;
        }
    }
}
