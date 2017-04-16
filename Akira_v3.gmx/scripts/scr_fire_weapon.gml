if(global.weapon_ammo>0)
{
    global.weapon_ammo--;
    shot=instance_create(x,y-88,obj_laser);
    audio_play_sound(snd_laser_2,10,false);
    if(obj_player_arms.image_index==1)
    {
        with(shot)
        {
            speed=16;
            direction=330;
            image_angle=direction;
        }
    }
    else if(obj_player_arms.image_index==2)
    {
        with(shot)
        {
            speed=16;
        }
    }
    else if(obj_player_arms.image_index==3)
    {
        with(shot)
        {
            speed=16;
            direction=30;
            image_angle=direction;
        }
    }
    else if(obj_player_arms.image_index==5)
    {
        with(shot)
        {
            direction=30;
            image_angle=direction;
        }
    }
    else if(obj_player_arms.image_index==7)
    {
        with(shot)
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
