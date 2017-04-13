switch(room)
{
    case(rm_test_0):
    {
        //spawn doors
        instance_create(224,288,obj_door_jammed_near);
        instance_create(352,288,obj_door_jammed_far);
        instance_create(480,288,obj_door_0);
        //spawn items if they have not been picked up
        break;
    }
    case(rm_test_1):
    {
        instance_create(192,288,obj_door_0);
        break;
    }
    default:
    {
        break;
    }
}

