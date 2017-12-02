dir = -degtorad(point_direction(x,y,obj_player.x,obj_player.y))

xspeed *= friction
yspeed *= friction

xspeed = cos(dir) * xaccel
yspeed += sin(dir) * yaccel

x += xspeed
y += yspeed
