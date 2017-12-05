hp -= other.damage
if (hp <= 0) {
    instance_destroy(self)
}
if (other.htl <= 1) {
    instance_destroy(other)
} else {
    other.htl -= 1
}
