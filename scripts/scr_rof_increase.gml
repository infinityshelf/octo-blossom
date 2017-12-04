var price = 100;

if global.rof >= 1 and global.cr > price {
    global.rof -= 1
    global.cr -= price
    return 1
} else {
    return 0
}
