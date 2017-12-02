if mouse_x > x and mouse_x < x+sprite_width and mouse_y > y and mouse_y < y+sprite_height {
    if mouse_check_button(mb_left) {
        image_index = 1
    }
    if image_index == 1 and mouse_check_button_released(mb_left) {
        image_index = 0
        //clicked
        if self.button_title == "BACK" {
            room_goto_previous()
        }
        
        if self.button_title == "PURCHASE" {
            //
        }
        
        if self.button_title == "EXIT GAME" {
            game_end()
        }
    }
} else {
    image_index = 0
}
