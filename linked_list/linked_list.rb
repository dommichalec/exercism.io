class Deque < Array

  def initialize(deck=[])
    @deck = deck
  end
end

# every single instance method in the test suite can be found
# in the Array class. Thus, it makes sense for Deque to inherit
# from Array.
