# Your code goes here!
require 'pry'
class Anagram

    attr_reader :word, :word_array

    def initialize(word)
        @word=word
    end

    def match(word_array)
        @word_array=word_array
        self.anagram?

    end

    def letter_array(prompt)
        letters = []
        prompt.each_char{|char| letters << char}
        letters.sort
    end

    def anagram?
        @word_array.select {|prompt| letter_array(prompt) == letter_array(@word)}
    end

    # binding.pry
end

