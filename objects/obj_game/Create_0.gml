score = 0;
lives = 3;
draw_set_font(fnt_text);


//Resolution Screen
view_width = 1920/6; //For more resolution higher than 6 is better
view_height = 1080/6; //For more resolution higher than 6 is better
window_scale = 3;
window_set_size(view_width * window_scale, view_height * window_scale);
//should be 1 to happen 1 step after you set windows Size,
//because if you dont do that window size wont have the correct size 
alarm[3] = 1;