# Phone number class
class PhoneNumber
  INVALID = '0000000000'.freeze

  def initialize(value)
    @number = value.tr('^A-Za-z0-9', '') # normalize number
  end

  def number
    start_with_one?
    return INVALID unless (@number.size == 10) && only_contains_numbers
    @number
  end

  def area_code
    start_with_one?
    @number.scan(/.../)[0]
  end

  def to_s
    start_with_one?
    style_number
    "#{@number}"
  end

  # Private methods
  private

  def start_with_one?
    @number = @number.slice!(1..10) if (@number.size == 11) && (@number.start_with?('1'))
  end

  def only_contains_numbers
    /^\d+$/ === @number # returns true if string only contains numbers
  end

  def style_number
    number_array = @number.split('')
    number_array.insert(0, '(')
    number_array.insert(4, ') ')
    number_array.insert(8, '-')
    @number = number_array.join('')
  end

  def size
    @number.size
  end
end
