# Hamming class
class Hamming
  def initialize
    @point_mutation = 0
  end

  def self.compute(dna_strand_one, dna_strand_two)
    same?(dna_strand_one, dna_strand_two)
  end
end
