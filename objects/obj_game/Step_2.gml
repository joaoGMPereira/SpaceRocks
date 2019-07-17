#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

if(instance_exists(obj_ship)) {

	var viewX = clamp(obj_ship.x - view_width/2, 0, room_width - view_width);
	var viewY = clamp(obj_ship.y - view_height/2, 0, room_height - view_height);
	camera_set_view_pos(view, viewX, viewY);
	
	var viewCurrentPositionX = camera_get_view_x(view);
	var viewCurrentPositionY = camera_get_view_y(view);
	
	var cameraSpeed = .1;
	camera_set_view_pos(view, lerp(viewCurrentPositionX, viewX, cameraSpeed), lerp(viewCurrentPositionY, viewY, cameraSpeed));
}