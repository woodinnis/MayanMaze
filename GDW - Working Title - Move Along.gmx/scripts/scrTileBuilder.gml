// Lay tiles down under exposed pieces of wall to give depth to rooms

wallCount = instance_number(objWall)
wallHeight = sprite_get_height(object_get_sprite(objWall));

show_debug_message(wallHeight);

for(i = 0; i < wallCount; i++)
{
    thisWall = instance_find(objWall,i);
    
    wallBottom = thisWall.y + wallHeight;
    
    if(!instance_position(thisWall.x, wallBottom, objWall))
    {
        tile_add(bgBrickTile, 0, 0, 16, 16, thisWall.x, wallBottom, -9);
        tile_add(bgBrickTile, 0, 0, 16, 16, thisWall.x + 16, wallBottom, -9);
    }
}