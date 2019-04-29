require 'http'

running = true

while running

  puts "Enter a word"
  puts "Enter q to quit"
  word = gets.chomp

  if word != "q"
    response = HTTP.get("https://api.wordnik.com/v4/word.json/#{ word }/definitions?limit=10&includeRelated=false&useCanonical=false&includeTags=false&api_key=64e90a58d89a8e7f3f000001fe809d0cd55d32cb45b9f117e")

    response_pron = HTTP.get("https://api.wordnik.com/v4/word.json/#{ word }/pronunciations?useCanonical=false&limit=10&api_key=64e90a58d89a8e7f3f000001fe809d0cd55d32cb45b9f117e")

    response_audio = HTTP.get("https://api.wordnik.com/v4/word.json/monkey/audio?useCanonical=false&limit=10&api_key=64e90a58d89a8e7f3f000001fe809d0cd55d32cb45b9f117e")
    definition = response.parse
    pronunciation = response_pron.parse
    audio = response_audio.parse

    definition = definition[0]["text"]
    pronunciation = pronunciation[0]["raw"]
    audio = audio[0]

    p definition
    puts "=" * 50
    p pronunciation
    puts "=" * 50
  else
    # exiting_code
    running = false
  end
end

  










#Bonus: Write your program in a loop such that the user can keep entering new words without having to restart the program. Give them the option of entering q to quit.
