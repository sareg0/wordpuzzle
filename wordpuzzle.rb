# require 'rspec'

# RSpec.describe do

#   it 'finds all anagrams of a word' do
#     expect(anagram_finder(['o','g','d'])).to contain_exactly('god', 'dog')
#   end

#   it 'finds all anagrams for two letter words' do
#     expect(anagram_finder(['i','t'])).to contain_exactly('it', 'ti')
#   end

#   it 'combines known letters with additional letter' do
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
FILTERED_LIST = WORDS.select { |word| word.size <= 9 && word.include?('i')}

# puts FILTERED_LIST.length
#59829

ALPHABET = ('a'..'z').to_a

# characters = ['i']
# two_letter_words.select do |word|
#   letter_array = word.split("")
#   characters << letter_array
#   characters = characters.flatten.uniq
# end

def anagram_finder(current_word, word_length=2)
  filtered_words = FILTERED_LIST.select do |word|
    word.length == word_length && (word.chars & current_word.chars).length == current_word.length
  end.uniq
  p filtered_words

  # letters.each do |l|
  #   l = l.is_a?(String) ? l.chars : l
  #   counter_letter_words.select do |word|
  #     l.all?{ |c| word.chars.include?(c) }
  #     letters << word
  #     letters.uniq!
  #   end
  # end
  # p letters

  # if word_length > 2
  #   p "end of script"
  #   return
  # end
  return if word_length >= 9
  #memoise

  filtered_words.each do |word|
    anagram_finder(word, word_length+1)
  end
end

# def word_maker(letters)
#   letter_combinations = []
#   ALPHABET.each do |a|
#     letter_combinations = letter_combinations.push([letters.to_s, a.to_s])
#   end
#   return letter_combinations
# end

# word_combis = []
# word_maker('i').each do |a|
#   word_combis = word_combis.push(anagram_finder(a))
# end


anagram_finder('i')
