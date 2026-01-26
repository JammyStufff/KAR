global.midtransition = false
global.roomtarget = -1


function TransitionPlaceSequence(_type)
{
	if (layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999, "transition")
	layer_sequence_create(_lay, 0 ,0 ,_type)
}

function TransitionStart(_roomtarget, _typeout, _typein)
{
	if (!global.midtransition)
	{
	global.midtransition = true
	global.roomtarget = _roomtarget
	TransitionPlaceSequence(_typein)
	layer_set_target_room(_roomtarget)
	TransitionPlaceSequence(_typeout)
	layer_reset_target_room()
	return true
	}
	else
	return false
}

function Transitionchangeroom()
{
	room_goto(global.roomtarget)
}

function Transitionfinished()
{
	layer_sequence_destroy(self.elementID)
	global.midtransition = false
}