if( instance_exists(argument1) )
return (argument0.x < argument1.x && (dire < argument0.lockDirUp || dire > argument0.lockDirDown)) || (argument0.x >= argument1.x && (dire > argument0.lockDirUpL && dire < argument0.lockDirDownL))

return false;
