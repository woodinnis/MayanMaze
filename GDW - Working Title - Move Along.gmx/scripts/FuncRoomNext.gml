// This script is used for moving between rooms
if(objOverlord.gameState == 2)
{
    with(objPlayer)
    { 
        if(room_next(room) != room_Pause)
        {                            
            room_goto_next();
        }
        else
        {
            room_goto(room_menuLarge);
        }
    }
    objOverlord.gameState = 0;
}
