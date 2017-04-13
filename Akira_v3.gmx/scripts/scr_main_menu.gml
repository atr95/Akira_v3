//This switch statement governs what happens when each menu option is pressed.
//to add more menu options, we would add more cases.
//You would also need to update obj_main_menu
switch (menu_position)
{
//new game
    case 0: 
    {
    //starts game
        if(read==false)
        {
        read=true;
        dots_message=false;
        display=false;
        menu[0]="Investigate the Signal";
        }
        else
        {
            scr_menu_to_level();
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
