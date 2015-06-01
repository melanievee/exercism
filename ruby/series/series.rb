class Series

  def initialize(numstring)
    @numarr = numstring.chars.map(&:to_i)
  end

  def slices(length)
    raise ArgumentError if length > @numarr.length

    resultnum = @numarr.length-length
    result = []

    (0..resultnum).each do |iter|
      result << @numarr[iter..(iter+length-1)]
    end

    result
  end

end
