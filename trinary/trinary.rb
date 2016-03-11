class Trinary
  def initialize(trinary)
    trinary.start_with?('0') ? @trinary = '0' : @trinary = trinary
  end

  def to_decimal
    digits.each_with_index
          .map { |digit, position| digit * 3**position }
          .reduce(:+)
  end

  private

  def digits
    @trinary.chars.map(&:to_i).reverse
  end
end
