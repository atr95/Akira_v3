//This switch statement governs what happens when each menu option is pressed.
//to add more menu options, we would add more cases.
//You would also need to update obj_main_menu
switch (menu_position)
{
    case 0: 
    {
        //unpause
        pause_game=0;
        global.pause=0;
        with(obj_display)
        {
        draw=true;
        alarm[0]=1;
        }
        break;
    }
    //exit game
    case 1:
    {
        //ends the game
        game_end();
        break;
    }
    //default
    default:
    {   
    //default case because all switch statements should have one
        break;
    }
}
