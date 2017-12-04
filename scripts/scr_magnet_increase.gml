var price = 100
if global.cr > price {
    global.magnetism += 10
    global.cr -= price
    return 1
} else {
    return 0
}
