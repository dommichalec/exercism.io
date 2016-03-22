# Matrix class
class Matrix
  attr_reader :rows

  def initialize(string)
    @rows = normalize_rows(string)
  end

  def columns
    @columns = rows.transpose
  end

  private

  def normalize_rows(string)
    string.split("\n").map { |row| row.split(' ').map(&:to_i) }
  end
end
