class Grains
  def self.square(number)
    2**(number - 1)
  end

  def self.total
    2**64 - 1
  end
end
