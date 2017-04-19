//first, figure out where the player should be.
//then spawn.
switch(room)
{
    case(rm_test_1):
    {
        if(global.array_enemy[0])
        {
           //spawn enemy 0
           instance_create(448,288,obj_enemy_test_0);
        }
        if(global.array_enemy[1])
        {
            //spawn enemy 1
            instance_create(544,288,obj_enemy_test_1);
        }
        if(global.array_enemy[2])
        {
            //spawn enemy 2
            instance_create(640,288,obj_enemy_test_2);
        }
    }
    case(rm_playtest_2):
    {
        if(global.array_enemy[0])
        {
           //spawn enemy 0
           instance_create(1056,288,obj_enemy_test_0);
        }
        if(global.array_enemy[1])
        {
            //spawn enemy 1
            instance_create(1088,288,obj_enemy_test_1);
        }
        if(global.array_enemy[2])
        {
            //spawn enemy 2
            instance_create(1152,288,obj_enemy_test_2);
        }
    }
    default:
    {
        break;
    }
}

