def decode_morse(message)
  morse_code = { 'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', 'e' => '.', 'f' => '..-.', 'g' => '--.',
                 'h' => '....', 'i' => '..', 'j' => '.---', 'k' => '-.-', 'l' => '.-..', 'm' => '--', 'n' => '-.',
                 'o' => '---', 'p' => '.--.', 'q' => '--.-', 'r' => '.-.', 's' => '...', 't' => '-', 'u' => '..-',
                 'v' => '...-', 'w' => '.--', 'x' => '-..-', 'y' => '-.--', 'z' => '--..' }
  words = message.split('   ')
  words.map do |word|
    word.split.map { |c| morse_code.key(c) }.join
  end.join(' ').upcase
end
puts decode_morse('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
