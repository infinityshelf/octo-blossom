x += xspeed
y += yspeed

if (x < 0 or x > room_width or y < 0 or y > room_height) {
    instance_destroy(self)
}
