if(i==walk_frame)
            {
                i=0;
                if(image_index==2)
                {
                    image_index=3;
                }
                else if(image_index==3)
                {
                    image_index=2;
                }
            }
            else
            {
                i++;
            }
if(x>global.border)
{
    x-=move_speed;
    with(obj_player_arms)
    {
    image_index=2;
    x-=obj_player.move_speed;
    }
}
if(max(keyboard_check_released(ord("A")),keyboard_check_released(vk_left),0))
{
    state=0;
    image_index=2;
}
//W or S or up arrow or down arrow to interact with an object
else if(max(keyboard_check_released(ord("W")),keyboard_check_released(vk_up),keyboard_check_released(ord("S")),keyboard_check_released(vk_down),0))
{
    image_index=2;
    state=4;
}
else if(max(keyboard_check_released(vk_shift),0))
{
    weapon_drawn=true;
    state=0;
    with(obj_player_arms)
    {
        if(image_index==2)
        {
            image_index=3;
        }
        else if(image_index==0)
        {
            image_index=1;
        }
    }
}
