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
    // Create the button
    for(i = 0; i < lvlCount; i++)
    {
        for(j = 0; j < rowCount; j++)
        {
            lvlButtons[lvlNum] = instance_create(posX + (imgW*j),posY + (imgH*i),objButton)
            lvlButtons[lvlNum].roomNum = lvlNum;
            lvlNum++;
            show_debug_message(lvlNum);
        }
    }
}
