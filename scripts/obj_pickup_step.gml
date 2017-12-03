// update once every 2 frames
if (update_counter >= 2) {
    update_counter = 0
    // do update
    xspeed *= friction
    yspeed *= friction
    x += xspeed
    y += yspeed
} else {
    update_counter += 1
}
