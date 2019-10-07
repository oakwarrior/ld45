visible = false
if(!global.memes) {
audio_play_sound(snd_memes, 1, false);	
audio_stop_sound(snd_music);
audio_play_sound(snd_epicsaxguy, 3, true);	
}
global.memes = true;