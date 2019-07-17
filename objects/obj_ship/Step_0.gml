if(keyboard_check(vk_left)) {
	image_angle = image_angle + 5;
}
if(keyboard_check(vk_right)) {
	image_angle = image_angle - 5;
}
if(keyboard_check(vk_up)) {
	motion_add(image_angle, 0.05);
}
if(keyboard_check(vk_down)) {
	motion_add(image_angle, -0.05);
}
if(keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_zap, 1, false);
	var inst = instance_create_layer(x,y, "Instances", obj_bullet);
	inst.direction = image_angle;
}

if(keyboard_check_released(vk_up) || keyboard_check_released(vk_down)) {
	motion_set(image_angle, 0);
}

move_wrap(true,true, sprite_width/2);