class Grains
  def self.square(num)
    2**(num-1)
  end

  def self.total
    self.square(65) - 1
  end
end
