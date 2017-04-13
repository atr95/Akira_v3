inst=instance_nearest(x,y,obj_interact);
            if(point_distance(x,y,inst.x,inst.y)<48)
            {
                if(object_get_parent(inst.object_index)==obj_ammo)
                {
                    with(inst)
                    {
                    instance_destroy();
                    }
                    state=0;
                }
                else if(object_get_parent(inst.object_index)==obj_medkit)
                {
                    with(inst)
                    {
                    instance_destroy();
                    }
                    state=0;
                }
                else if(object_get_parent(inst.object_index)==obj_key)
                {
                    with(inst)
                    {
                        instance_destroy();
                    }
                    state=0;
                }
                else if(object_get_parent(inst.object_index)==obj_door)
                {
                    with(inst)
                    {
                        alarm[0]=1;
                    }
                    state=1;
                }
                else if(object_get_parent(inst.object_index)==obj_terminal)
                {
                    //nothing yet
                }
            }
            else
            {
            state=0;
            }
