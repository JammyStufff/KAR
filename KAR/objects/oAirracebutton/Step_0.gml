if (selected == true)
{
	sprite_index = sMainselected
	if keyboard_check(ord("z"))
	{
		room_goto(rGame)
	}
}
else
{
	sprite_index = sMainbutton
}