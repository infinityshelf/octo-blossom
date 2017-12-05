var inst;

inst = instance_create(32,32,obj_menu_button_large)
with (inst) {
    button_title = "BACK"
    func = scr_back
    xoffset = 8
    yoffset = 8
}

inst = instance_create(room_width-32-obj_menu_button_large.sprite_width,32,obj_menu_button_large)
with (inst) {
    button_title = "EXIT"
    func = scr_game_end
    xoffset = 8
    yoffset = 8
}

var spacing = 6;
upgrades[0] = "Increased Rate of Fire"
inst = instance_create(128 + 0*spacing*32,128,obj_menu_button_square);
with (inst) {
    button_title = other.upgrades[0]
    func = scr_rof_increase
    xoffset = 8
    yoffset = 32
}
upgrades[1] = "Increased Fire Velocity"
inst = instance_create(128 + 1*spacing*32,128,obj_menu_button_square);
with (inst) {
    button_title = other.upgrades[1]
    func = scr_firevel_increase
    xoffset = 8
    yoffset = 32
}
upgrades[2] = "Increased Magnet"
inst = instance_create(128 + 2*spacing*32,128,obj_menu_button_square);
with (inst) {
    button_title = other.upgrades[2]
    func = scr_magnet_increase
    xoffset = 8
    yoffset = 32
}
upgrades[3] = "Increased Damage"
inst = instance_create(128 + 3*spacing*32,128,obj_menu_button_square);
with (inst) {
    button_title = other.upgrades[3]
    func = scr_damage_increase
    xoffset = 8
    yoffset = 32
}
upgrades[4] = "Increased Bullet Piercing"
inst = instance_create(128 + 4*spacing*32,128,obj_menu_button_square);
with (inst) {
    button_title = other.upgrades[4]
    func = scr_bullet_pierce_increase
    xoffset = 8
    yoffset = 32
}
