var price = 100;

if global.damage < 150 and global.cr >= price {
    global.damage += 10
    global.cr -= price
    return 1
} else {
    return 0
}
