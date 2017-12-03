draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, c_white, 1)
draw_set_colour(c_white)
//draw_text(view_xview[0] + 8,view_yview[0] + 8, "CR: " + string(room.cr))

// mini map

draw_rectangle(view_xview[0] + view_wview[0] - 192, view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + 102, true)
draw_circle(view_xview[0] + view_wview[0] - 192 + (x / 10), view_yview[0] + (y / 10), 2, true)
