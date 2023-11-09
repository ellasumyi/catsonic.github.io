# Define the folder path where your sound files are located
folder_path = "C:/Users/ellas/Downloads/dataset (1)/dataset/"

# Initialize global variables for file counts
file_counts = {}
files_to_play = [
  "B_ANI01_MC_FN_SIM01_101.wav",
  "B_ANI01_MC_FN_SIM01_102.wav",
  "B_IND01_EU_MN_ELI01_103.wav",
  "B_IND01_EU_FN_ELI01_201.wav",
  "B_IND01_EU_MN_ELI01_202.wav",
  "B_IND01_EU_MN_ELI01_203.wav",
  "B_IND01_EU_FN_ELI01_301.wav",
  "B_IND01_EU_MN_ELI01_302.wav",
  "B_IND01_EU_FN_ELI01_303.wav",
  "B_IND01_EU_MN_ELI01_304.wav",
  "F_IND01_EU_FN_ELI01_302.wav",
  "F_IND01_EU_FN_ELI01_304.wav",
  "F_LEO01_EU_MI_RIT01_301.wav",
  "F_LEO01_EU_MI_RIT01_102.wav",
  "F_LEO01_EU_FI_RIT01_103.wav",
  "F_LEO01_EU_FI_RIT01_104.wav",
  "F_LEO01_EU_MI_RIT01_205.wav",
  "F_MAG01_EU_FN_FED01_201.wav",
  "F_MAG01_EU_MN_FED01_202.wav",
  "I_ANI01_MC_FN_SIM01_101.wav",
  "I_ANI01_MC_MN_SIM01_102.wav",
  "I_ANI01_MC_FN_SIM01_103.wav",
  "I_ANI01_MC_FN_SIM01_304.wav",
  "I_BAC01_MC_MN_SIM01_301.wav",
  "I_BAC01_MC_MN_SIM01_302.wav",
  "I_BAC01_MC_FN_SIM01_203.wav",
  "I_BAC01_MC_MN_SIM01_201.wav",
  "I_BAC01_MC_FN_SIM01_202.wav"
  
]

# Play the tick sound
define :play_tick do |duration, sleep_time, num_ticks|
  with_fx :reverb, mix: 0.5 do
    num_ticks.times do
      sample :elec_tick, amp: 2, release: duration, sustain: 0
      sleep sleep_time
    end
  end
end

# Loop through the list of files and play them
live_loop :play_files do
  files_to_play.each do |file|
    # FIND MALE N
    if file.include?("_MN_")
      use_synth :piano
      play :C2
      gain = 1
      
      #INCLUDE RECORDING 1
      if file.include?("_1")
        in_thread do
          play_tick(0.2, 0.1, 1)
        end
        #INCLUDE SITUATION NOISES
        if file.include?("B_")
          stretch_factor = 3
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
        elsif file.include?("F_")
          stretch_factor = 1
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
        #INCLUDE RECORDING 2
      elsif file.include?("_2")
        in_thread do
          play_tick(0.2, 0.1, 2)
        end
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
        #INCLUDE RECORDING 3
      elsif file.include?("_3")
        in_thread do
          play_tick(0.2, 0.1, 3)
        end
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
      end
      
      #FIND MALE I
    elsif file.include?("_MI_")
      use_synth :piano
      play :C2
      gain = 1
      #INCLUDE RECORDING 1
      if file.include?("_1")
        in_thread do
          play_tick(0.2, 0.1, 1)
        end
        # SETTING B
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
          # SETTING F
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
          # SETTING I
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
        #INCLUDE RECORDING 2
      elsif file.include?("_2")
        in_thread do
          play_tick(0.2, 0.1, 2)
        end
        # SETTING B
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
          # SETTING F
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
          # SETTING I
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
        #INCLUDE RECORDING 3
      elsif file.include?("_3")
        in_thread do
          play_tick(0.2, 0.1, 3)
        end
        # SETTING B
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
          # SETTING F
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
          # SETTING I
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
      end
      
      #FIND FEMALE I
    elsif file.include?("_FI_")
      use_synth :piano
      play :C4
      gain = 1
      #INCLUDE RECORDING 1
      if file.include?("_1")
        in_thread do
          play_tick(0.2, 0.1, 1)
        end
        # SETTING B
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
          # SETTING F
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
          # SETTING I
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
        #INCLUDE RECORDING 2
      elsif file.include?("_2")
        in_thread do
          play_tick(0.2, 0.1, 2)
        end
        # SETTING B
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
          # SETTING F
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
          # SETTING I
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
        #INCLUDE RECORDING 3
      elsif file.include?("_3")
        in_thread do
          play_tick(0.2, 0.1, 3)
        end
        # SETTING B
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
          # SETTING F
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
          # SETTING I
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
      end
      
      #FIND FEMALE N
    elsif file.include?("_FN_")
      use_synth :piano
      play :C4
      gain = 1
      #INCLUDE RECORDING 1
      if file.include?("_1")
        in_thread do
          play_tick(0.2, 0.1, 1)
        end
        # SETTING B
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
          # SETTING F
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
          # SETTING I
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
        #INCLUDE RECORDING 2
      elsif file.include?("_2")
        in_thread do
          play_tick(0.2, 0.1, 2)
        end
        # SETTING B
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
          # SETTING F
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
          # SETTING I
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
        #INCLUDE RECORDING 3
      elsif file.include?("_3")
        in_thread do
          play_tick(0.2, 0.1, 3)
        end
        # SETTING B
        if file.include?("B_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/389452__lzmraul__brushing.wav", beat_stretch: stretch_factor
          # SETTING F
        elsif file.include?("F_")
          stretch_factor = 2
          sample "C:/Users/ellas/Downloads/382007__jmcv__jmcv_nibbling_smallanimal.mp3", beat_stretch: stretch_factor
          # SETTING I
        elsif file.include?("I_")
          sample "C:/Users/ellas/Downloads/420875__inspectorj__gathering-ice-a.wav"
        end
      end
    end
    
    # Sleep for a fixed duration
    sleep 2
  end
end
