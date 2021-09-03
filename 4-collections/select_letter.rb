def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_character = sentence[counter]

    if current_character == character
      selected_chars << current_character
    end

    counter += 1
  end

  selected_chars
end
