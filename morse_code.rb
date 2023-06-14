class MorseCodeDecoder
  MORSE_CODE = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }.freeze

  def decode_char(morse_char)
    MORSE_CODE[morse_char]
  end

  def decode_word(morse_word)
    morse_chars = morse_word.split
    decoded_word = ''

    morse_chars.each do |morse_char|
      decoded_char = decode_char(morse_char)
      decoded_word += decoded_char if decoded_char
    end

    decoded_word
  end

  def decode(message)
    morse_words = message.split('   ')
    decoded_message = ''

    morse_words.each do |morse_word|
      decoded_word = decode_word(morse_word)
      decoded_message += "#{decoded_word} " unless decoded_word.empty?
    end

    decoded_message.strip
  end
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

decoder = MorseCodeDecoder.new
decoded_message = decoder.decode(message)

puts decoded_message
  
