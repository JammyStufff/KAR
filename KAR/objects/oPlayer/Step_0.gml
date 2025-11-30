//movement code

if keyboard_check(vk_left)
{
	sprite_index = sprSide;
	
	image_xscale = -1
	xspd -= 0.10
}

if keyboard_check(vk_right)
{
	sprite_index = sprSide;
	
	image_xscale = 1
	xspd += 0.10
}


if keyboard_check(vk_up)
{
	sprite_index = sprUp;
	
	yspd -= 0.10
}

if keyboard_check(vk_down)
{
	sprite_index = sprDown;
	
	yspd += 0.10
}

if keyboard_check(vk_up) && keyboard_check(vk_right)
{
	sprite_index = sprdiagonalup
image_xscale = -1
}

if keyboard_check(vk_down) && keyboard_check(vk_left)
{
	sprite_index = sprdiagonaldown
image_xscale = -1
}
if keyboard_check(vk_down) && keyboard_check(vk_right)
{
	sprite_index = sprdiagonaldown
image_xscale = 1
}

if keyboard_check(vk_up) && keyboard_check(vk_left)
{
	sprite_index = sprdiagonalup
image_xscale = 1
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
	if keyboard_check(vk_right)
	{
		xspd -= 0.05
	}
	
		if keyboard_check(vk_left)
	{
		xspd += 0.05
	}
	
	if keyboard_check(vk_up)
	{
		yspd += 0.05
	}
	
	if keyboard_check(vk_down)
	{
		yspd -= 0.05
	}
}

if keyboard_check_released(vk_space) && dasht = 30
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

if dasht > 30
{
	dasht = 30
}
if keyboard_check_released(vk_space) && dasht < 29
{
		dasht = 0
}



//placeholder character switching
if keyboard_check_pressed(vk_backspace)
{ 
	character = (character + 1 + characters.length) % characters.length;
	
	script_execute(characterInfo[character][characterInfoParams.spriteSetScript]);
}

if keyboard_check(vk_f1)
{
 room_goto(track_1)
}

//end lap
