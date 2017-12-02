dir = -degtorad(point_direction(x,y,obj_player.x,obj_player.y))

xspeed *= friction
yspeed *= friction

xspeed = cos(dir) * xaccel
yspeed += sin(dir) * yaccel

x += xspeed
y += yspeed

if (x != xprevious) or (y != yprevious) {
    image_angle = point_direction(xprevious,yprevious,x,y)
}
