# ETL class
class ETL
  def self.transform(old_hash)
    @new_hash = {}
    old_hash.each do |key, value|
      value.each { |single_value| @new_hash[single_value.downcase] = key }
    end
    @new_hash
  end
end
