/*
*   Return to the previous room
*/

switch(room)
{
    case room_LvlSelect:
    {
        room_goto(room_menuLarge);
        break;
    }
    case room_UserLvlSelect:
    {
        room_goto(room_LvlSelect)
        break;
    }
    default:
        break;
}
