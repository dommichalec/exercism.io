# Phone number class
class PhoneNumber
  INVALID = '0000000000'.freeze

  def initialize(value)
    @number = value.tr('^A-Za-z0-9', '') # clean up number
    remove_US_calling_code
  end

  def number
    valid_size? && only_contains_numbers? ? @number : INVALID
  end

  def area_code
    @area_code = @number.scan(/.../)[0]
  end

  def to_s
    stylize
    "#{@number}"
  end

  # Private methods
  private

  def remove_US_calling_code
  (@number.size == 11) && (@number.start_with?('1')) ? @number = @number.slice!(1..10) : @number
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
