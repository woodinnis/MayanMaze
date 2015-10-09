// Add random moss tiles to the floor of new rooms
if(room != room_LvlSelect && room != room_menuLarge)
{
    for(i = 0; i < MOSSCOUNT; i++)
    {
        moss[i] = tile_add(choose(bgMoss1,bgMoss2,bgMoss3), 0, 0, 32, 32,0,0, 1);
        tile_set_alpha(moss[i], 0.6);
    }

    for(i = 0; i < MOSSCOUNT; i++)
    {
        setX = round (irandom(room_width) / 32) * 32;
        setY = round (irandom(room_height) / 32) * 32;
        tile_set_position(moss[i], setX,setY);
    }
    
}