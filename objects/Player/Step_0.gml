  /// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
//key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

key_left = (keyboard_check(vk_left) || keyboard_check(ord("A"))) && place_free(x-3,y)
key_right = (keyboard_check(vk_right) || keyboard_check(ord("D"))) && place_free(x+3,y)


//calcule Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y+1,Obj_Collision)) && (key_jump) 
{
	vsp = -5;
}

//horizontal Collision
if(place_meeting(x + hsp, y, Obj_Collision))
{
	while (!place_meeting(x+sign(hsp),y,Obj_Collision))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
 
//Vertical Collision
if(place_meeting(x,y + vsp, Obj_Collision))
{
	while(!place_meeting(x,y + sign(vsp), Obj_Collision))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if(!place_meeting(x,y+1,Obj_Collision))
{
	sprite_index = Spr_Jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
}
else
{
	image_speed = 1;
	if(hsp == 0)
	{
		sprite_index = Spr_Idle;
	}
	else
	{
		sprite_index = Spr_Walk;
	}
}

if (hsp != 0) image_xscale = sign(hsp);

depth = -y;
if(hp <= 0)
{
	room_goto(Game_Over)
}
show_debug_message("Nos queda esto de vida:");
show_debug_message(hp);


      