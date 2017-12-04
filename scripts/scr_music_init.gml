snd0 = audio_play_sound(sound_theme_0,100,true)
snd1 = audio_play_sound(sound_theme_1,100,true)
snd2 = audio_play_sound(sound_theme_2,100,true)


if audio_is_playing(sound_theme_0) {
    audio_sound_gain(snd0, 0, 5*1000)
}

if audio_is_playing(sound_theme_1) {
    audio_sound_gain(snd1, 0, 2*1000)
}

if audio_is_playing(sound_theme_2) {
    audio_sound_gain(snd2, 0, 3*1000)
}
