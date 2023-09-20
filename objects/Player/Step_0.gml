  /// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
//key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
keyDown = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyLeft = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);



{
 		#region Move State
	if (keyboard_check(vk_right))||keyboard_check(ord("D"))
	{
		x += walksp;
		sprite_index = Spr_Walk;
		image_xscale = 1;
		image_speed = 0.6;
	}
	else if keyboard_check(vk_left)||keyboard_check(ord("A"))
 	{
		x -= walksp;
		sprite_index = Spr_Walk;
		image_xscale = -1;
		image_speed = 0.6;
	} 
	
	else 
	{
		
		sprite_index = Spr_Idle;
		image_speed = 0.6;
	} 
	
	if(keyboard_check(vk_up))||keyboard_check(ord("W"))
	{
		y = y - 3;
	 	sprite_index = Spr_Walk;
		//image_xscale = 2;
	}
	if(keyboard_check(vk_down))||keyboard_check(ord("S"))
	{
		y = y + 3;
		sprite_index = Spr_Walk;
		//image_xscale = -2;
	}
	#endregion
}


if(keyboard_check_pressed(vk_space) && collision_rectangle(x-8,y,x+8,y+1,Obj_Collision,false,false))
{
	vspeed = -7;
}

//horizontal Collision

 


depth = -y;
if(hp <= 0)
{
	room_goto(Game_Over)
}
show_debug_message("Nos queda esto de vida:");
show_debug_message(hp);


      