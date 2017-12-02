var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));

var inx = right - left;
var iny = down - up;

xspeed *= friction
yspeed *= friction

xspeed += inx * maxspeed
yspeed += iny * maxspeed

var dot = sqrt(dot_product(xspeed,yspeed,xspeed,yspeed))
if (dot > maxspeed) {
    xspeed *= maxspeed/dot
    yspeed *= maxspeed/dot
}

x += xspeed
y += yspeed

move_direction = point_direction(xprevious, yprevious, x, y)
image_angle = move_direction

if (mouse_check_button_pressed(mb_left)) {
    var inst = instance_create(x,y,obj_bullet);
    with (inst) {
        dir = -degtorad(point_direction(x,y,mouse_x,mouse_y))
        xspeed = cos(dir) * maxspeed
        yspeed = sin(dir) * maxspeed
    }
}
