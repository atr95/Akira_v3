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
                x-=move_speed/2;
                with(obj_player_arms)
                {
                    if(image_index!=5 && image_index!=7)
                    {
                        image_index=6;
                    }
                    x-=obj_player.move_speed/2;
                }
            }
            if(max(keyboard_check_released(ord("A")),keyboard_check_released(vk_left),0))
            {
                state=0;
                image_index=2;
            }
            else if(max(keyboard_check(ord("W")),keyboard_check(vk_up),0))
            {
                with(obj_player_arms)
                {
                    if(image_index==2)
                    {
                        image_index=3;
                    }
                    else if(image_index==6)
                    {
                        image_index=7;
                    }
                    
                }
            }
            else if(max(keyboard_check(ord("S")),keyboard_check(vk_down),0))
            {
                with(obj_player_arms)
                {
                    if(image_index==2)
                    {
                        image_index=1;
                    }
                    else if(image_index==6)
                    {
                        image_index=5;
                    }
                }
            }
            else
            {
                with(obj_player_arms)
                {
                    if(image_index==1 || image_index ==3)
                    {
                        image_index=2;
                    }
                    else if(image_index==5 || image_index==7)
                    {
                        image_index=6;
                    }
                }
            }
                    
            if(max(keyboard_check_released(vk_space),0))
            {
                scr_fire_weapon();
            }
            else if(max(keyboard_check_released(ord("R")),0))
            {
                scr_reload();
            }
            else if(max(keyboard_check_released(vk_shift),0))
                {
                    //holster your weapon
                    state=9;
                    with(obj_player_arms)
                    {
                        if(image_index==1 || image_index==2 ||image_index==3)
                        {
                            image_index=0;
                        }
                        else if(image_index==5||image_index==6||image_index==7)
                        {
                            image_index=4;
                        }
                    }
                }
            
