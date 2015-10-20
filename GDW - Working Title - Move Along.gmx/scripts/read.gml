// Testing
myKey = argument0;
myIndex = argument1;

objIndex = 0;

// Load and instantiate any multi-instance objects (Walls, traps, etc)
if(myIndex >= 0)
{
    obj = ini_read_real(mapName, myKey + string(myIndex) + string(objIndex), 0);
    objIndex++;
    newX = ini_read_real(mapName, myKey + string(myIndex) + string(objIndex), 0);
    objIndex++;
    newY = ini_read_real(mapName, myKey + string(myIndex) + string(objIndex), 0);
    objIndex = 0;
    
    instance_create(newX, newY, obj);
}
// Load and instantiate any single-instance objects (Player, exit, etc)
else
{
    obj = ini_read_real(mapName, myKey + string(objIndex), 0);
    objIndex++;
    newX = ini_read_real(mapName, myKey + string(objIndex), 0);
    objIndex++;
    newY = ini_read_real(mapName, myKey + string(objIndex), 0);
    objIndex = 0;
    
    // If a zero count, or no index exists for the current object, do not spawn
    if(obj != 0)
        instance_create(newX, newY, obj);
}
