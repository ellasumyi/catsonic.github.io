#SONIC SKETCH 2

# Play the tick sound
define :play_tick do |duration, sleep_time, num_ticks|
  with_fx :reverb, mix: 0.5 do
    num_ticks.times do
      sample :elec_tick, amp: 2, release: duration, sustain: 0
      sleep sleep_time
    end
  end
end


in_thread do
  play_tick(0.2, 0.1, 1)
end
sleep 2
in_thread do
  play_tick(0.2, 0.1, 2)
end
sleep 2
in_thread do
  play_tick(0.2, 0.1, 3)
end