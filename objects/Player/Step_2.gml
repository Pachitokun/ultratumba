if(!collision_rectangle(x-8, y, x+8, y+1, Obj_Collision,false,false))
{
	gravity = 0.3;
	
}

if(vspeed > 0)
{
	var ground = collision_rectangle(x-8, y, x+8, y + vspeed, Obj_Collision, false, false);
	if(ground)
	{
		y = ground.y;
		vspeed = 0;
		gravity = 0;
	
	
	}
	
}



