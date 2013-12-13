class AnagramGenerator
  attr_accessor :word, :words, :letters
  def initialize(word)
    @word = word
    @words = []
  end

  def generate
    if word == ''
      raise ArgumentError, "It can't be a blank string"
    else
      words = split_word_to_letter.permutation.map(&:join)
      words.shift
    end
    words
  end

  def split_word_to_letter
    letters = word.split('')
    letters
  end
end
