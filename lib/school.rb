class School
  #attr_attributes :school
  attr_accessor :student, :roster
  attr_reader :school

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    hash = {}
    hash[grade] = []
    hash[grade] << student

    if @roster.include?(grade)
      @roster[grade] << student
      @roster[grade].sort
    else
        @roster.update(hash)
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each { |grade, name|
    @roster[grade] = name.sort
  }
  end
end
