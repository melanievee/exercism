require 'set'

class Robot
  attr_reader :name
  @@used_names = Set.new

  def initialize
    reset
  end

  def reset
    @name = generate_name until @name && @@used_names.add?(@name)
  end

  def generate_name
    ((0..1).map { random_letter }.join) + (3..5).map { random_number }.join
  end

  def random_letter
    ('A'..'Z').to_a.sample
  end

  def random_number
    (0..9).to_a.sample
  end

end