// update once every 5 frames
if (update_counter >= 5) {
    update_counter = 0
    // do update
    xspeed *= friction
    yspeed *= friction
    x += xspeed
    y += yspeed
} else {
    update_counter += 1
}
