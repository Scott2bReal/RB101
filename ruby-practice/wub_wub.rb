def song_decoder(string)
  string.split('WUB').reject { |char| char == '' }.join(' ')
end

p song_decoder("AWUBBWUBC") == "A B C"

p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"

p song_decoder("WUBAWUBBWUBCWUB") == "A B C"
