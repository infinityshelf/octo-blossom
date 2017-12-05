global.cost_scale = 20;
if not variable_global_exists("counters") {
    global.counters[0] = 0;
}
var inst;

inst = instance_create(32,32,obj_menu_button_large)
with (inst) {
    has_cost = false
    button_title = "BACK"
    func = scr_back
    xoffset = 8
    yoffset = 8
}

inst = instance_create(room_width-32-obj_menu_button_large.sprite_width,32,obj_menu_button_large)
with (inst) {
    has_cost = false
    button_title = "EXIT"
    func = scr_game_end
    xoffset = 8
    yoffset = 8
}
var upgrade_xoffset = 400
var upgrade_yoffset = 128
var spacing = 2;
var counter = 0;
upgrades[0] = "Increased Rate of Fire"
inst = instance_create(upgrade_xoffset, upgrade_yoffset + counter*spacing*32,obj_menu_button_square);
with (inst) {
    has_cost = true
    ID = counter
    if array_length_1d(global.counters) < ID {
        global.counters[ID] = 0
    }
    button_title = other.upgrades[0]
    func = scr_rof_increase
    xoffset = 8
    yoffset = 32
}
counter += 1;
upgrades[1] = "Increased Fire Velocity"
inst = instance_create(upgrade_xoffset, upgrade_yoffset + counter*spacing*32,obj_menu_button_square);
with (inst) {
    has_cost = true
    ID = counter
    if array_length_1d(global.counters) < ID {
        global.counters[ID] = 0
    }
    button_title = other.upgrades[1]
    func = scr_firevel_increase
    xoffset = 8
    yoffset = 32
}
counter += 1;
upgrades[2] = "Increased Magnet"
inst = instance_create(upgrade_xoffset, upgrade_yoffset + counter*spacing*32,obj_menu_button_square);
with (inst) {
    has_cost = true
    ID = counter
    if array_length_1d(global.counters) < ID {
        global.counters[ID] = 0
    }
    button_title = other.upgrades[2]
    func = scr_magnet_increase
    xoffset = 8
    yoffset = 32
}
counter += 1;
upgrades[3] = "Increased Damage"
inst = instance_create(upgrade_xoffset, upgrade_yoffset + counter*spacing*32,obj_menu_button_square);
with (inst) {
    has_cost = true
    ID = counter
    if array_length_1d(global.counters) < ID {
        global.counters[ID] = 0
    }
    button_title = other.upgrades[3]
    func = scr_damage_increase
    xoffset = 8
    yoffset = 32
}
counter += 1;
upgrades[4] = "Increased Bullet Piercing"
inst = instance_create(upgrade_xoffset, upgrade_yoffset + counter*spacing*32,obj_menu_button_square);
with (inst) {
    has_cost = true
    ID = counter
    if array_length_1d(global.counters) < ID {
        global.counters[ID] = 0
    }
    button_title = other.upgrades[4]
    func = scr_bullet_pierce_increase
    xoffset = 8
    yoffset = 32
}

