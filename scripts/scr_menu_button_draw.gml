draw_sprite_ext(sprite_index,image_index,x,y, image_xscale, image_yscale, image_angle, c_white, image_alpha)

var str = string(button_title);
if (has_cost) {
    str += ", cost is " + string(price) + " CR";
}
draw_text(x+xoffset,y + yoffset, str)
