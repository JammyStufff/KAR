if global.select = 1 && keyboard_check(vk_down)
{
	global.sselect = 1
	global.select = 0
}

if keyboard_check(vk_up)
{
	global.sselect = 0
	sprite_index = sSettings
}
if global.select = 0
{
	sprite_index = sSettingsselected
}
if global.sselect = 1 && keyboard_check(vk_right)
{
	global.sselect = 0
	sprite_index = sSettings
}