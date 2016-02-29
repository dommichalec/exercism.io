class ArgumentError < StandardError
end

# Complement class
class Complement
  VERSION = 3
  NUCLEOTIDE_COMPLEMENTS = { 'G' => 'C', 'C' => 'G',
                             'T' => 'A', 'A' => 'U' }.freeze

  def self.of_dna(str)
    str_array = str.split('')
    translated_array = []
    str_array.each do |nucleotide|
      fail ArgumentError unless NUCLEOTIDE_COMPLEMENTS[nucleotide]
      translated_array << NUCLEOTIDE_COMPLEMENTS[nucleotide]
    end
    translated_array.join('')
  end
end
