dir = -degtorad(point_direction(x,y,obj_player.x,obj_player.y))

if (point_distance(x,y,obj_player.x,obj_player.y) > 3) {
    xspeed = cos(dir) * maxspeed
    yspeed = sin(dir) * maxspeed
}

x += xspeed
y += yspeed


if (x != xprevious) or (y != yprevious) {
    image_angle = point_direction(xprevious,yprevious,x,y)
}
