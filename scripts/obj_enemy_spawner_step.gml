current_spawn_speed = ceil(global.spawn_multiplier/global.difficulty)
current_spawn_limit = ceil(global.difficulty)

if (current_counter >= current_spawn_speed and instance_number(obj_enemy) < current_spawn_limit and instance_number(obj_enemy) < global.maxmaxmax) {
    current_counter = 0
    instance_create(room_width/2, room_height/2, obj_enemy)
} else {
    current_counter += 1
}

