class Binary
  def initialize(binary)
    @binary = binary
  end

  def to_decimal
    return 0 if @binary =~ /[^01]/
    number = index = 0
    @binary.reverse.each_char do |digit|
      number += digit.to_i * 2**index
      index += 1
    end
    number
  end
end
