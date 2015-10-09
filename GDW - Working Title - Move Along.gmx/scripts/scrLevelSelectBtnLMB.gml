/*
*   Use roomNum and roomTarget to assign destinations,
*   prepending room_Maze, and zeros based on value of roomNum.
*/

roomPrepend = "room_Maze";

// Set value of roomTarget
if(roomNum < 10)
{
    roomTarget = roomPrepend + "00" + string(roomNum);
}
else if(roomNum >= 10 && roomNum < 100)
{
    roomTarget = roomPrepend + "0" + string(roomNum);
}
else if(roomNum >= 100)
{
    roomTarget = roomPrepend + string(roomNum);
}

// Verify existance of roomTarget, move to room
if(room_exists(asset_get_index(roomTarget)))
    room_goto(asset_get_index(roomTarget));
