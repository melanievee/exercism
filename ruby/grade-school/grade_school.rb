class School
  def initialize
    @students = {}
  end

  def add(student,grade)
    @students[grade] ? @students[grade] << student : @students[grade] = [student]
    @students[grade].sort!
  end

  def grade(grade)
    @students[grade] ? @students[grade] : []
  end

  def to_hash
    @students.sort.to_h
  end
end
