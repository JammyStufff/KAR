function scr_Wrap(value,_min,_max)
{
	if (value > _max)
	{
		value = _min + ((value - _max) - 1)
	}
	if (value < _min)
	{
		value = _max - ((value + _min) + 1)
	}
	return value
}