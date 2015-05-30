class Array
  def accumulate(&block)
    result = []
    self.each do |item|
      result << yield(item)
    end
    result
  end
end
