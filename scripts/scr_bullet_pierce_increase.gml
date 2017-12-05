var price = 100
if global.cr >= price and global.piercing < 10{
    global.piercing += 1
    global.cr -= price
    return 1
} else {
    return 0
}
