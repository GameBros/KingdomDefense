d = argument2;

if( instance_exists(argument1) )
return ((argument0.x < argument1.x && (d < argument0.lockDirUp || d > argument0.lockDirDown)) || 
        (argument0.x >= argument1.x && (d > argument0.lockDirUpL && d < argument0.lockDirDownL)))
        
