/// @description blink in cursor
if (_cursor == cursor) {
	_cursor = "";
} else {
	_cursor = cursor;
}
// fire this alarm again in "delay" cycles
alarm[0] = delay;