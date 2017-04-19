//obj pause controls pausing the game
if(instance_exists(obj_pause)==false)
{
instance_create(0,0,obj_pause);
}
//obj_light controls lighting
if(instance_exists(obj_light)==false)
{
instance_create(0,0,obj_light);
}
//obj_world_state is important for the level variables
if(instance_exists(obj_world_state)==false)
{
instance_create(0,0,obj_world_state);
}
//obj_display controls the players hud and player messages
if(instance_exists(obj_display)==false)
{
instance_create(0,0,obj_display);
}
//obj_fade controls fading in and fading out of rooms
if(instance_exists(obj_fade)==false)
{
instance_create(0,0,obj_fade);
}
//obj music controls ambient music
if(instance_exists(obj_music)==false)
{
instance_create(0,0,obj_music);
}

