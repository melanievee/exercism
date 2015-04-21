class Phrase

  def initialize(phrase)
    @phrase = process(phrase)
  end

  def word_count
    @phrase.reduce( Hash.new(0) ) do | word_count, word |
      word_count[word] += 1
      word_count
    end
  end

  def process(phrase)
    phrase.downcase.gsub(/[^a-z0-9\']/," ").downcase.split
  end

end
