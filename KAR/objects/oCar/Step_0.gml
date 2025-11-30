if keyboard_check(vk_left)
{
	sprite_index = sWSside;
	
	image_xscale = -1
	xspd -= 0.10
}

if keyboard_check(vk_right)
{
	sprite_index = sWSside;
	
	image_xscale = 1
	xspd += 0.10
}


if keyboard_check(vk_up)
{
	sprite_index = sWSup;
	
	yspd -= 0.10
}

if keyboard_check(vk_down)
{
	sprite_index = sWSdown;
	
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
	dasht += 0.5
}

keyboard_check_released(vk_space)
{
	if keyboard_check(vk_right)  && dasht > 30
	{
		xspd += 7
		dasht = 0
		
	}
		
    
	
	if keyboard_check(vk_left)  && dasht > 30
	{
		xspd -= 7
		dasht = 0
	}
	
	if keyboard_check(vk_up)  && dasht > 30
	{
		yspd -= 7
		dasht = 0
		
	}
	
	if keyboard_check(vk_down)  && dasht > 30
	{
		yspd += 7
		dasht = 0
		
	}
}

if dasht > 30
{
	dasht = 30
}





