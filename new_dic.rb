require 'http'


system "clear"
puts "Dictionary App, So I can drink and know things"
puts "=" * 60
puts ""



puts "Enter a word"
word = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{ word }/definitions?limit=10&includeRelated=false&useCanonical=false&includeTags=false&api_key=64e90a58d89a8e7f3f000001fe809d0cd55d32cb45b9f117e")

definition = response.parse

puts ""
puts "DEFINITIONS"
puts "=" * 60

  count = 1
definition.each do |definitions_hash|
  puts "git"

    
    

    
end