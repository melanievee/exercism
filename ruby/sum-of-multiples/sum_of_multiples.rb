class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def self.to(max)
    new(3,5).to(max)
  end

  def to(max)
    sum_inputs = []
    @multiples.each do |e|
      sum_inputs += (1..max-1).select{ |num| (num % e == 0) }
    end
    sum_inputs.empty? ? 0 : sum_inputs.uniq.reduce(&:+)
  end
end
