global.pauseBG = background_create_from_surface(0,0,0,room_width,room_height,0,0);
instance_deactivate_all(true);
instance_activate_object( oCursor );
instance_activate_object( oSnow );
instance_activate_object( oController );
global.pause = true;
