# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] = [] if !roster[grade]
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.collect do |grade, students|
      # students.sort!
      # not using bang because I don't want to permanently affect the roster
      roster[grade] = students.sort
    end
    roster
  end
end
