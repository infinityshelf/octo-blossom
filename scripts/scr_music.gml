//sound_play(sound_theme)
audio_play_sound(sound_theme_0,0,true)
audio_play_sound(sound_theme_1,0,true)
audio_play_sound(sound_theme_2,0,true)

if audio_is_playing(sound_theme_0) {
    sound_volume(sound_theme_0, 0)
}

if audio_is_playing(sound_theme_2) {
    sound_volume(sound_theme_2, 0)
}
