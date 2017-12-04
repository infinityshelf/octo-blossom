//spawns pickups of varying value based on the decimal expansion of the currency `self` was carrying
/*
var highest = 10;
while (cr > 0) {
    var inst = instance_create(x,y,obj_pickup);
    with (inst) {
        show_debug_message(string(other.cr mod highest))
        value = other.cr mod highest
    }
    show_debug_message(string(cr mod highest))
    cr -= cr mod highest
    highest *= 10
    
} */

var inst = instance_create(x,y,obj_pickup);
with(inst) {
    value = other.cr
}
