if(obj_player.x>x)
{
    audio_play_sound(snd_monster_hit,9,false);
    instance_create(x,y-88,obj_bile);
    with(obj_bile)
    {
        speed=8;
         image_angle=180;
    }
}
else
{
    instance_create(x,y-88,obj_bile);
    with(obj_bile)
    {
        speed= -8;
       
    }
}
