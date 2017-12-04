if mouse_x > x and mouse_x < x+sprite_width and mouse_y > y and mouse_y < y+sprite_height {
    if mouse_check_button(mb_left) {
        image_index = 1
    }
    if image_index == 1 and mouse_check_button_released(mb_left) {
        image_index = 0
        //clicked
        var retval = script_execute(func);
        if retval == 1 {
            global.purchased = true;
        }
    }
} else {
    image_index = 0
}
