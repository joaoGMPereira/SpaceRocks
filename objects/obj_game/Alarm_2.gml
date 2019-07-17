if(room != rm_game) {
	exit;
}

var xx = irandom_range(0, room_width);
var yy = choose(0, 0);


instance_create_layer(xx, yy, "Instances", obj_enemy);
alarm[2] = 4*room_speed;