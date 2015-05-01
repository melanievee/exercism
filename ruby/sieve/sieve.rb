class Sieve
  def initialize(number)
    @range = (3..number).to_a
  end

  def primes
    primes_array = [2]

    until @range.empty?
      divisor = primes_array.last
      @range = @range.reject { |i| i % divisor == 0 }
      primes_array << @range.shift
    end

    primes_array
  end
end
