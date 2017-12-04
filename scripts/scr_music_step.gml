if (global.music_on) {
    if audio_is_playing(sound_theme_0) {
        audio_sound_gain(snd0, obj_player.cr/100,0)
    }
    
    if audio_is_playing(sound_theme_1) {
        audio_sound_gain(snd1, 1, 0)
    }
    
    if audio_is_playing(sound_theme_2) {
        audio_sound_gain(snd2, obj_player.cr/100, 0)
    }
} else {
        if audio_is_playing(sound_theme_0) {
        audio_sound_gain(snd0, 0,1000)
    }
    
    if audio_is_playing(sound_theme_1) {
        audio_sound_gain(snd1, 0, 1000)
    }
    
    if audio_is_playing(sound_theme_2) {
        audio_sound_gain(snd2, 0, 1000)
    }
}
