if (loss_counter > 60) {
    loss_counter = 0
    cr = floor(cr * 0.95);
} else {
    loss_counter += 1
}
