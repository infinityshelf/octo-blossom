current_spawn_speed = ceil(global.spawn_multiplier/global.difficulty)
current_spawn_limit = ceil(global.difficulty)

if (current_counter >= current_spawn_speed and instance_number(obj_enemy) < current_spawn_limit and instance_number(obj_enemy) < global.maxmaxmax) {
    current_counter = 0
    show_debug_message(string(1 - 2*(random(1) > 0.5)))
    instance_create(obj_player.x + (1 - 2*(random(1) > 0.5))*(random(100) + 150),obj_player.y + (1 - 2*(random(1) > 0.5))*(random(100) + 150), obj_enemy)
} else {
    current_counter += 1
}

