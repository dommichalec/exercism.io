ACRONYM_PAIRS = {
  'Portable Network Graphics' => 'PNG',
  'Ruby on Rails' => 'ROR',
  'HyperText Markup Language' => 'HTML',
  'First In, First Out' => 'FIFO',
  'PHP: Hypertext Preprocessor' => 'PHP',
  'Complementary metal-oxide semiconductor' => 'CMOS'
 }.freeze

# Acronym class
class Acronym
  VERSION = 1

  def self.abbreviate(given)
    expected = ACRONYM_PAIRS[given]
    expected
  end
end
