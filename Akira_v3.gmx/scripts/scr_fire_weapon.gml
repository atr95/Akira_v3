/*
if(global.weapon_ammo>0)
            {
                    //audio_play_sound(snd_laser,1,false);
                    global.weapon_ammo--;
                        /*
                        instance_create(x,y-20,obj_lazer);
                        if(image_index==0 || image_index==1)
                        {
                            with(obj_lazer)
                            {
                                speed= -16;
                            }
                        }
            }
*/
if(global.ammo_count>0)
{
    global.ammo_count--;
    instance_create(x,y-88,obj_laser);
    audio_play_sound(snd_laser_2,10,false);
    if(obj_player_arms.image_index==1)
    {
        with(obj_laser)
        {
            speed=16;
            direction=330;
            image_angle=direction;
        }
    }
    else if(obj_player_arms.image_index==2)
    {
        with(obj_laser)
        {
            speed=16;
        }
    }
    else if(obj_player_arms.image_index==3)
    {
        with(obj_laser)
        {
            speed=16;
            direction=30;
            image_angle=direction;
        }
    }
    else if(obj_player_arms.image_index==5)
    {
        with(obj_laser)
        {
            direction=30;
            image_angle=direction;
        }
    }
    else if(obj_player_arms.image_index==7)
    {
        with(obj_laser)
        {  
            direction=330;
            image_angle=direction;
        }
    }
    
}
else
{
    with(obj_display)
    {
        global.message_display=3;
        alarm[0]=1;
    }
}
