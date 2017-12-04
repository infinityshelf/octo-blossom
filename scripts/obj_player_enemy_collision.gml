// iframe > 60 means player is vulnerable and can be hit
// thus they get hit, start flashing, reset invuln,
if (iFrame > global.invuln_time) {
    image_speed = 1/5
    iFrame = 0
    cr = floor(cr * global.lossratio)
    with (other) {
        cr = 0
    }
    instance_destroy(other)
}
