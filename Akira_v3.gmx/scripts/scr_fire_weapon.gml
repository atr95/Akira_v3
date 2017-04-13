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
    if(image_index==0 || image_index==1)
    {
        with(obj_laser)
        {
            speed = 16;
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
