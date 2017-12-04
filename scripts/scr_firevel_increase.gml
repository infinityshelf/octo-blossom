var price = 100
if global.cr > price {
    global.bullet_speed += 10
    global.cr -= price
    return 1
} else {
    return 0
}
