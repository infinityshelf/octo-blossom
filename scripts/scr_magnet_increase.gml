var price = 100
if global.cr >= price and global.magnetism < 300{
    global.magnetism += 10
    global.cr -= price
    return 1
} else {
    return 0
}
