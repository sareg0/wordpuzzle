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

WORD_LIST = File.readlines('/usr/share/dict/words').map do |w| 
  w.downcase.chomp
end.select { |w| w.size <= 9 && w.include?('i')}

# puts FILTERED_LIST.length
#59829
# characters = ['i']
# two_letter_words.select do |word|
#   letter_array = word.split("")
#   characters << letter_array
#   characters = characters.flatten.uniq
# end

def anagram_finder(current_word, word_length)
  WORD_LIST.select do |word|
    word.length == word_length && (word.chars & current_word.chars).length == current_word.length
  end.uniq

  # return if word_length >= 9
  # #memoise

  # filtered_words.each do |word|
  #   anagram_finder(word, word_length+1)
  # end
end

# def three_anagram_finder(two_word, word_length)
#   filtered_words = FILTERED_LIST.select do |word|
#     word.length == word_length 
#     (two_word.chars & word.chars).length
#   end.uniq
# end

puts "here are the TWO letter words"
words = ['i']

def recursive_finder
  words.each do |word|
    (1..9).each do |count|
      words = anagram_finder(word, count)
    end
  end
end
p words.count
