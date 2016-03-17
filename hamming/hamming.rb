# Hamming class
class Hamming
  VERSION = 1
  def self.compute(strand_one, strand_two)
    strand_one_array = strand_one.split('')
    strand_two_array = strand_two.split('')

    hamming_distance = 0
    counter = 0
    strand_one_array.size.times do
      hamming_distance += 1 unless strand_one_array[counter] == strand_two_array[counter]
      counter += 1
    end
    hamming_distance
  end
end
