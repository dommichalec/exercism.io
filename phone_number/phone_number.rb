# Phone number class
class PhoneNumber
  INVALID = '0000000000'.freeze

  def initialize(value)
    @number = value.tr('^A-Za-z0-9', '') # clean up number
  end

  def number
    remove_US_calling_code
    return INVALID unless valid_size? && only_contains_numbers?
    @number
  end

  def area_code
    remove_US_calling_code
    @area_code = @number.scan(/.../)[0]
  end

  def to_s
    remove_US_calling_code
    stylize
    "#{@number}"
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

  def stylize
    phone_number_array = @number.split('')
    phone_number_array.insert(0, '(').insert(4, ') ').insert(8, '-')
    @number = phone_number_array.join('')
  end
end
