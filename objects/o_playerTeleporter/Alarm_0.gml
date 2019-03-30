/// @description decrease oxygen
if (pauseEE == false) {
	o2EE -= o2_per_cycleEE;
	alarm[0] = o2_tickEE;
}