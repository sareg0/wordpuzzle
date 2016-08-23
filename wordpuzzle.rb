# require 'rspec'

# RSpec.describe do

#   it 'finds all anagrams of a word' do
#     expect(anagram_finder(['o','g','d'])).to contain_exactly('god', 'dog')
#   end

#   it 'finds all anagrams for two letter words' do
#     expect(anagram_finder(['i','t'])).to contain_exactly('it', 'ti')
#   end

#   it 'combine known letters with additional letter' do
#     expect(word_maker('i')).to include(["i", "b"], ["i", "c"], ["i", "d"])
#   end

#   word_combis = []

#   it 'finds all anagrams from results of word_maker' do
#     word_maker('i').each do |a|
#       word_combis = word_combis.push(anagram_finder(a))
#     end
#     expect(word_combis.flatten).to include('in', 'it', 'hi')
#   end

#   it 'finds all three letter words and compares to the two letter words'
#     anagram_finder(word)
#   end

# end

## puzzle start

## take all words with letter 'i'

WORDS = File.readlines('/usr/share/dict/words').map { |w| w.downcase.chomp }
FILTERED_WORDS = WORDS.select { |word| word.size <= 9 && word.include?('i') }
ALPHABET = ('a'..'z').to_a
puts WORDS.length

two_letter_words = FILTERED_WORDS.select { |word| word.size == 2 }
characters = ['i']
two_letter_words.select do |word|
  letter_array = word.split("")
  characters << letter_array
  characters = characters.flatten.uniq
end

print characters
puts
puts two_letter_words.length

# def anagram_finder(letters)
#   filtered_words = WORDS.select { |w| letters.size == w.chomp.size }
#   letters.each do |l|
#     filtered_words = filtered_words.select { |w| w.include?(l) }
#   end
#   return filtered_words
#   puts filtered_words
# end

# def word_maker(letters)
#   letter_combinations = []
#   ALPHABET.each do |a|
#     letter_combinations.push([letters.to_s, a.to_s])
#   end
#   return letter_combinations
#   puts letter_combinations
# end

# word_combis = []
# word_maker('i').each do |a|
#   word_combis = word_combis.push(anagram_finder(a))
# end

# puts word_combis

# wörter mit 3 buchstaben



# RETURNS ALL ANAGRAMS
# def anagram_finder(letters)
#   filtered_words = WORDS.select { |w| letters.size == w.chomp.size }
#   letters.each do |l|
#     filtered_words = filtered_words.select { |w| w.include?(l) }
#   end
#   return filtered_words
# end

# the letter(s) that you have + every letter from the alphabet
#put them in the anagram finder
#keep those that are left

#finds 3 letter anagrams
# def anagram_finder(letters)
#   filtered_words = WORDS.select { |w| letters.size == w.chomp.size }
#   filtered_words = filtered_words.select { |w| w.include?(letters[0]) }
#   filtered_words = filtered_words.select { |w| w.include?(letters[1]) }
#   filtered_words = filtered_words.select { |w| w.include?(letters[2]) }
# end

# #get the nine letter words that contain 'i'
# def find_nine_letter_words(words, word_length, clue)
#   words.select { |w| w.chomp.length == word_length && w.downcase.include?(clue) }
# end


# puts find_nine_letter_words(words, 9, "i").first
# puts find_matching_eight_letter_words(words, 8, "i")


# #pass in each word you want to compare
# def compare_word(original, comparator)
#   puts original
#   original.each do |word|
#     word.split("")
#     word.each do |letter|
#       #remove letter from 9lw
#       original = original.delete(letter)
#       puts original
#       #compare to 8lws
#     end
#   end
#   puts comparator
# end

# #compare to 8lw

# # e.g. zygotaxis
# # remove 'z'
# # compare 'ygotaxis' with 8 letter words
# # add the ones found that match to collection
# # next try 'zgotaxis'
# # etc.

# #all nine letter words: Take one letter away. Compare with all 8 letter words. Find all 8 letter wordsthat match 9lw - 1

# def find_matching_eight_letter_words(words, word_length, clue)
#   words.select { |w| w.chomp.length == word_length && w.downcase.include?(clue) }
# end

# compare_word find_nine_letter_words(words, 9, "i").first(2), find_matching_eight_letter_words(words, 8, "i").first

# # 9lw-1
# #slice the word
