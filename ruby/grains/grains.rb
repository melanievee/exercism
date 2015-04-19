class Grains
  def self.square(num)
    2**(num-1)
  end

  def self.total
    (1..64).reduce(0) { |sum, n| sum += self.square(n) }
  end
end
