// update once every 2 frames
if (update_counter >= 2) {
    update_counter = 0
    // do update
    if (point_distance(x,y,obj_player.x,obj_player.y) > 3) {
        dir = -degtorad(point_direction(x,y,obj_player.x,obj_player.y))

        xspeed = cos(dir) * maxspeed
        yspeed = sin(dir) * maxspeed
    }

    xspeed *= friction
    yspeed *= friction
} else {
    update_counter += 1
}
x += xspeed
y += yspeed


if (x != xprevious) or (y != yprevious) {
    image_angle = point_direction(xprevious,yprevious,x,y)
}
