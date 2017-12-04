var price = 100
if global.cr > price and global.bullet_speed <= 60{
    global.bullet_speed += 1
    global.cr -= price
    return 1
} else {
    return 0
}
