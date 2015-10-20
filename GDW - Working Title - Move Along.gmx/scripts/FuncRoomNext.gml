// This script is used for moving between rooms

last = "";
test = "room_Maze";

// Check the total number of current rooms in the game
if(LEVELCOUNT < 10)
    last = test + "00" + string(LEVELCOUNT);
else if(LEVELCOUNT < 100)
    last = test + "0" + string(LEVELCOUNT);
else
    last = test + string(LEVELCOUNT);
    
check = asset_get_index(last);

// If the player is at the last room in the game, return to the main menu,
// otherwise, move to the next room.
if(objOverlord.gameState == 2)
{
    if(room == check)
        room_goto(room_menuLarge);
    else
        room_goto_next();

    objOverlord.gameState = 0;
}
