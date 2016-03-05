# Phone number class
class PhoneNumber
  INVALID = '0000000000'.freeze

  def initialize(value)
    @number = value.tr('^A-Za-z0-9', '') # clean up number
    @area_code = @number.scan(/.../)[0]
  end

  def number
    remove_US_calling_code
    return INVALID unless valid_size? && only_contains_numbers?
    @number
  end

  def area_code
    remove_US_calling_code
    @area_code
  end

  def to_s
    remove_US_calling_code
    style_number
  end

  # Private methods
  private

  def remove_US_calling_code
    @number = @number.slice!(1..10) if (@number.size == 11) && (@number.start_with?('1'))
  end

  def only_contains_numbers?
    /^\d+$/ === @number # returns true if string only contains numbers
  end

  def valid_size?
    @number.size == 10
  end

  def style_number
    number_array = @number.split('')
    number_array.insert(0, '(')
    number_array.insert(4, ') ')
    number_array.insert(8, '-')
    @number = number_array.join('')
    "#{@number}"
  end
end
