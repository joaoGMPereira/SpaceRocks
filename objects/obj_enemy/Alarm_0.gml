if(room != rm_game) {
	exit;
}

audio_play_sound(snd_zap, 1, false);
var inst = instance_create_layer(x,y, "Instances", obj_enemy_bullet);
inst.direction = image_angle;
alarm[0] = 200;