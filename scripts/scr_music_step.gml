if audio_is_playing(sound_theme_0) {
    audio_sound_gain(snd0, player.cr/100,0)
}

if audio_is_playing(sound_theme_1) {
    audio_sound_gain(snd1, 1, 0)
}

if audio_is_playing(sound_theme_2) {
    audio_sound_gain(snd2, player.cr/100, 0)
}
