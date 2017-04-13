if(i==walk_frame)
            {
                i=0;
                if(image_index==0)
                {
                    image_index=1;
                }
                else if(image_index==1)
                {
                    image_index=0;
                }
            }
            else
            {
                i++;
            }
        
            if(x<room_width-global.border)
            {
                x+=move_speed/2;
                with(obj_player_arms)
                {
                    image_index=1;
                    x+=obj_player.move_speed/2;
                }
            }
            if(max(keyboard_check_released(ord("D")),keyboard_check_released(vk_right),0))
            {
                image_index=0;
                state=0;
            }
            //W or S or up arrow or down arrow to interact with an object
            else if(max(keyboard_check_released(ord("W")),keyboard_check_released(vk_up),keyboard_check_released(ord("S")),keyboard_check_released(vk_down),0))
            {
                image_index=0;
                state=4;
            }
            else if(max(keyboard_check_released(vk_space),0))
            {
                scr_fire_weapon();
            }
            else if(max(keyboard_check_released(vk_shift),0))
                {
                    //holster your weapon
                    state=9;
                    with(obj_player_arms)
                    {
                        if(image_index==3)
                        {
                            image_index=2;
                        }
                        else if(image_index==1)
                        {
                            image_index=0;
                        }
                    }
                }
