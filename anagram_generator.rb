require 'pry'
class AnagramGenerator
  attr_accessor :word, :words, :split_word
  def initialize(word)
    @word = word
    @words = []
  end

  def generate
    if word == ''
      raise ArgumentError, "It can't be a blank string"
    else
      @words = split_word_to_letter.permutation.map(&:join)
    end
    @words.shift
    @words
  end

  def split_word_to_letter
    split_word = word.split('')
    split_word
  end
end
