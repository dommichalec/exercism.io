# Phrase class

Phrase = Struct.new(:phrase) do
  VERSION = 1
  def word_count
    counts = Hash.new(0)
    words.each { |word| counts[word] += 1 }

    counts
  end

  private

  def words
    phrase.downcase.gsub(/\W/, ' ').split
  end
end
