xspeed = 0
yspeed = 0

xaccel = 2
yaccel = 2

maxspeed = 3
maxaccel = 2
friction = 0.9

cr = 1+floor(global.difficulty/10)
show_debug_message(string(cr))

// idk i just felt like 100 + 4/3 * d**2/3 would be an interesting hp curve
// im all about those curves
// ...
maxhp = 100 + floor(4/3 * power(global.difficulty,0.66666))
global.maxhp = maxhp
hp = maxhp

update_counter = 0
