
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));

var inx = right - left;
var iny = down - up;

if (inx == 0) {
    xspeed *= friction
}
if (iny == 0) {
    yspeed *= friction
}

xspeed += inx * xaccel
yspeed += iny * yaccel

var dot = sqrt(dot_product(xspeed,yspeed,xspeed,yspeed))
if (dot > maxspeed) {
    xspeed *= maxspeed/dot
    yspeed *= maxspeed/dot
}

x += xspeed
y += yspeed

move_direction = point_direction(xprevious, yprevious, x, y)
if (x != xprevious) or (y != yprevious) {
    image_angle = move_direction
}

// should_fire flag helps when the player is pressing the button quickly. a single press should fire a single bullet.
if (mouse_check_button_pressed(mb_left)) {
    should_fire = true
}

// if mouse is held, attempt to shoot. gun may still be on cooldown, but the cooldown should expire after some time
if (mouse_check_button(mb_left) or should_fire) {
    if (press_counter > global.rof) {
        press_counter = 0
        var inst = instance_create(x,y,obj_bullet);
        with (inst) {
            dir = -degtorad(point_direction(x,y,mouse_x,mouse_y))
            dir += random(global.inaccuracy) - global.inaccuracy/2
            xspeed = cos(dir) * maxspeed// + other.xspeed
            yspeed = sin(dir) * maxspeed// + other.yspeed
        }
        should_fire = false
    }
    press_counter += 1;
} else if (press_counter != 0) {
    // mouse not held, and press counter isnt 0
    press_counter += 1
    if (press_counter > global.rof) {
        press_counter = 0
        /*var inst = instance_create(x,y,obj_bullet);
        with (inst) {
            dir = -degtorad(point_direction(x,y,mouse_x,mouse_y))
            xspeed = cos(dir) * maxspeed + other.xspeed
            yspeed = sin(dir) * maxspeed + other.yspeed
        }*/
    }
}

if global.purchased {
    cr = global.cr
    global.purchased = false
}else{
    global.cr = cr
}
global.difficulty = cr/10;

if keyboard_check_pressed(vk_escape) {
    room_goto_next()
}

iFrame += 1
if (iFrame > 60) {
    image_speed = 0
    image_index = 0
}

if cr >= 20000 {
    room_goto(room_thanks)
}
