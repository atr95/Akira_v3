//everything that might have an active alarm needs to have its alarms
//incremented to avoid errors that occur when we pause the game.
with(obj_display)
{
    if(alarm[1]>0)
    {
        alarm[1]++;
    }
}
