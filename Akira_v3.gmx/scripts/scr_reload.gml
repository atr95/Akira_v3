if(global.ammo_count>0)
{
    if(global.weapon_ammo<global.max_ammo)
    {
        ammo=global.max_ammo-global.weapon_ammo;
        while(i<global.max_ammo)
        {
            if(global.ammo_count>=ammo)
            {
                global.ammo_count-=ammo;
                global.weapon_ammo+=ammo;
                i+=global.max_ammo;
            }
            else
            {
            ammo--;
            i++;
            }
        }
        
        
    }
    else
    {
        with(obj_display)
        {
            global.message_display=8;
            alarm[0]=1;
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
