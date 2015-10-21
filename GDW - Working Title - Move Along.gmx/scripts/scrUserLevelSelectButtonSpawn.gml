/*  
*   Open maps.ini and retrieve the number of entries
*   
*   Place buttons dynamically into level select screen
*   using the number of entries counted in the maps.ini file
*   to create the button
*/

// Level number and count
lvlNum = 1;
lvlCount = 0;

// Positions
imgW = sprite_get_width(sprButton);
imgH = sprite_get_height(sprButton);
switch(os_type) // Set x,y coords based on OS
{
    case os_windows:
    case os_win8native:
    {
        posX = display_get_width()/BTNSPAWNX;
        posY = display_get_height()/BTNSPAWNY;
        break;
    }
    case os_android:
    default:
    {
        posX = window_get_width()/BTNSPAWNXAND;
        posY = window_get_height()/BTNSPAWNYAND;
        break;
    }
}
rowCount = 4;

// Verify current room
if(room == room_UserLvlSelect)
{
    file = SAVEFILE;
    roomName = "";
    if(file_exists(file))
        ini_open(file);
    
    // Run through the maps.ini file to find available levels
    for(j = 0; j < 1000; j++)
    {
        if(j < 1)
            roomName = USERROOM + "000";
        else if(j < 10)
            roomName = USERROOM + "00"+ string(j);
        else if(j < 100)
            roomName = USERROOM + "0"+ string(j);
        else if(j < 1000)
            roomName = USERROOM + string(j);
        
        // Increment level count
        if(ini_section_exists(roomName))
            lvlCount++;
    }
    ini_close();    // Close file
    
    n = 0;
    w = 0;
    h = 0;
    // Create new level select buttons based
    while(n < lvlCount)
    {
        lvlButtons[lvlNum] = instance_create(posX + (imgW*w),posY + (imgH*h),objButton)
        posX += BTNSPAWNX;
        lvlButtons[lvlNum].roomNum = lvlNum;
        lvlNum++;
        n++
        w++
        if(w > rowCount)
        {
            // Reset x
            switch(os_type)
            {
                case os_windows:
                case os_win8native:
                {
                    posX = display_get_width()/BTNSPAWNX;
                    break;
                }
                case os_android:
                default:
                {
                    posX = window_get_width()/BTNSPAWNXAND;
                    break;
                }
            }
            w = 0;
            h++;
        }
    }
}
