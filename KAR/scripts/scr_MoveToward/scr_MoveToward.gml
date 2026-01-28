function scr_MoveToward(val,target,delta)
{
	if (val > target)
	{
		val -= delta
		val = clamp(val,target,1000000)
	}
	if (val < target)
	{
		val += delta
		val = clamp(val,-1000000,target)
	}
	return val
}