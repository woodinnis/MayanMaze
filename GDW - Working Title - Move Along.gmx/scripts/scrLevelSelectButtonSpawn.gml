/*  
*   Place buttons dynamically into level select screen
*   using instance_create, and an argument(level number) 
*   to create the button
*/

// Level number and count
lvlNum = 1;
lvlCount = LEVELCOUNT;

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
if(room == room_LvlSelect)
{
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
