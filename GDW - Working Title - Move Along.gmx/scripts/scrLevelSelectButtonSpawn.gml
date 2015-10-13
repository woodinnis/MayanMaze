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
posX = display_get_width()/16;
posY = display_get_height()/32;
rowCount = 5;

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
        lvlButtons[lvlNum].roomNum = lvlNum;
        lvlNum++;
        n++
        w++
        if(w > rowCount)
        {
            w = 0;
            h++;
        } 
    }
}    
