var price = 100
if global.cr > price {
    global.magdistance += 10
    global.cr -= price
    return 1
} else {
    return 0
}
