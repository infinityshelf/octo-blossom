if (keyboard_check(vk_up) or keyboard_check(ord("W"))) {
    yspeed -= yaccel
}

if(keyboard_check(vk_left) or keyboard_check(ord("A"))){
    xspeed -= xaccel
}

if (keyboard_check(vk_down) or keyboard_check(ord("S"))) {
    yspeed += yaccel
}

if (keyboard_check(vk_right) or keyboard_check(ord("D"))) {
    xspeed += xaccel
}

x += xspeed
y += yspeed


