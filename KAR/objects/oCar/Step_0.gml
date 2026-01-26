//movement code

if keyboard_check(vk_left)
{
	sprite_index = sWSside;
	left = true
	image_xscale = -1
	xspd -= 0.10
}

if keyboard_check(vk_right)
{
	sprite_index = sWSside;
	right = true
	image_xscale = 1
	xspd += 0.10
}


if keyboard_check(vk_up)
{
	image_xscale = 1
	sprite_index = sWSup;
	up = true
	yspd -= 0.10
}

if keyboard_check(vk_down)
{
	image_xscale =1
	sprite_index = sWSdown;
	down = true
	yspd += 0.10
}

if keyboard_check(vk_up) && keyboard_check(vk_right)
{
	sprite_index = sWSdiagonal2
image_xscale = 1
}

if keyboard_check(vk_down) && keyboard_check(vk_left)
{
	sprite_index = sWSdiagonal1
image_xscale = -1
}
if keyboard_check(vk_down) && keyboard_check(vk_right)
{
	sprite_index = sWSdiagonal1
image_xscale = 1
}

if keyboard_check(vk_up) && keyboard_check(vk_left)
{
	sprite_index = sWSdiagonal2
image_xscale = -1
}

x += xspd
y += yspd

//slowdown if button released

if keyboard_check_released(vk_right) && xspd < 0
{
right = false

}

if keyboard_check_released(vk_left) &&  xspd > 0
{
	left = false
}

if keyboard_check_released(vk_up) &&  yspd > 0
{
up = false

}

if keyboard_check_released(vk_down) && yspd < 0
{
	down = false

}

if keyboard_check_released(vk_right) && xspd > 3
{
xspd -= 2

}

if keyboard_check_released(vk_left) &&  xspd < -3
{
	xspd += 2

}

if keyboard_check_released(vk_up) &&  yspd < -3
{
	yspd += 2

}

if keyboard_check_released(vk_down) && yspd > 3
{
	yspd -= 2

}

//cap speeds

if xspd > 5
{
	xspd = 5
}

if yspd > 5
{
	yspd = 5
}

if xspd < -5
{
	xspd = -5
}

if yspd < -5
{
	yspd = -5
}



//dash code

if keyboard_check(vk_space)
{
	suck = 1
	dasht += 0.5
	if keyboard_check(vk_right)
	{
		xspd -= 0.06
	}
	
		if keyboard_check(vk_left)
	{
		xspd += 0.06
	}
	
	if keyboard_check(vk_up)
	{
		yspd += 0.06
	}
	
	if keyboard_check(vk_down)
	{
		yspd -= 0.06
	}

}

if keyboard_check_released(vk_space) && dasht > 19
{

	if keyboard_check(vk_right)  
	{
		xspd += 7
		dasht = 0
		
	}
	else
	{
		dasht = 0
	}
		
    
	
	if keyboard_check(vk_left) 
	{
		xspd -= 7
		dasht = 0
	}
	else
	{
		dasht = 0
	}
	
	if keyboard_check(vk_up) 
	{
		yspd -= 7
		dasht = 0
	}
	else
	{
		dasht = 0
	}
	
	if keyboard_check(vk_down) 
	{
		yspd += 7
		dasht = 0
	}
	else
	{
		dasht = 0
	}
}

if dasht > 25
{
	dasht = 25
}
if keyboard_check_released(vk_space) && dasht < 29
{
		dasht = 0
}