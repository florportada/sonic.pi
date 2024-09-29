# Conectar el MIDI
live_loop :midi_sonido do
  use_real_time #Para poder usarlo en tiempo real
  note, velocity = sync "/midi:ipad:1/*" #la conexión al midi
  synth :pluck, note: note, amp: velocity / 127.0 #se elige el instrumento y se aplica la amplitud a la nota tocada en el midi
end

