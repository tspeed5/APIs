require 'unirest'

#collect word from  - done

#return wordnik API top definition, top example and pronunciation - done 

#extra cred: write program in a loop to allow user to continue entering words without having to restart the program - done

loop do

p "choose a word"

user_word = gets.chomp

response = Unirest.get("https://api.wordnik.com/v4/word.json/#{user_word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=key")

puts definition = response.body[0]['text']

end

