score += 10;
instance_destroy();
audio_play_sound(snd_die, 1, false);
with(other) {
	instance_destroy();
	if(sprite_index == spr_asteroid_huge) {
		repeat(2) {
			var newAstroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			newAstroid.sprite_index = spr_asteroid_medium;
		}
	} else if(sprite_index == spr_asteroid_medium) {
		repeat(2) {
			var newAstroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			newAstroid.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
		
}