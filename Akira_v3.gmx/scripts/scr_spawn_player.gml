//first, figure out where the player should be.
//then spawn.
switch(room)
{
    case(rm_test_0):
    {
        if(global.game_start)
        {
            global.game_start=false;
            instance_create(96,288,obj_player);
        }
        else if(global.array_doors[0])
        {
            global.array_doors[0]=false;
            instance_create(480,288,obj_player);
        }
        break;
    }
    case(rm_test_1):
    {
        if(global.array_doors[0])
        {
            global.array_doors[0]=false;
            instance_create(192,288,obj_player);
        }
        break;
    }
    default:
    {
        break;
    }
}
