// Perform actions based on game state
// 0 = Intro
// 1 = Playing
// 2 = Outro
if(room != roomEditor && room != room_menuLarge && room != room_LvlSelect)
{
    switch(gameState)
    {
        case 0:
        {
            if(guiAlpha > 0)
            {
                guiAlpha -= 0.025;
            }
            else
            {
                gameState = 1;
            }
                    
            break;
        }
        case 1:
        {        
            // Keep track of total tiles used this level
            totalTiles = tilesUsed;
            
            thisRoom = string(room_previous(room));
            break;
        }
        case 2:
        {
            // Some sort of transition is needed here.
            // It needs to come after the Continue button is pressed on the pause menu
            break;
        }
    }
}
