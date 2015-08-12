// Declare and set variables

//texture_set_interpolation(true);

// Adjust room view depending on map and screen size
//window_set_size(ROOMWIDTH,ROOMHEIGHT);

// showDoors is true for five seconds
showDoors = true;

alarm[0] = room_speed * 5;
// Set game state
// 0 = Intro
// 1 = Playing
// 2 = Outro
gameState = 1;


// canWalk begins as false, preventing the player from walking
canWalk = false;

// Number of tiles used/moved per level
tilesUsed = 0;

totalTiles = 0;

// Time spent in room
timeUsed = 0;

// Is the game paused?
isPaused = false;

// Declare colours
colourText = make_colour_rgb(1, 115, 136);
colourText2 = make_colour_rgb(88, 255, 151);

// Declaring a new start to the room
newStart = true;

// Declare guiAlpha as 1 for use in room transitions
guiAlpha = 0;

thisRoom = string(room);
