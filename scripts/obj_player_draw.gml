draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, c_white, 1)
draw_set_colour(c_white)
draw_text(view_xview[0] + 8,view_yview[0] + 8, "CR: " + string(self.cr))
