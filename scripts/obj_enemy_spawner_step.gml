current_spawn_speed = ceil(global.spawn_multiplier/global.difficulty)
current_spawn_limit = ceil(global.difficulty)


if (current_counter >= current_spawn_speed and instance_number(obj_enemy) < current_spawn_limit and instance_number(obj_enemy) < global.maxmaxmax) {
    current_counter = 0
    dir = degtorad(random(360))
    distance = random(300)+500
    var sx = cos(dir) * distance;
    var sy = sin(dir) * distance;
    instance_create(obj_player.x + sx, obj_player.y + sy, obj_enemy)
} else {
    current_counter += 1
}

