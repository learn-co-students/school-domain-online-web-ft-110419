class School
  attr_reader :name, :roster
  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end
  def add_student(name, grade)
    if self.roster[grade]
      self.roster[grade] << name
    else 
      self.roster[grade] = []
      self.roster[grade] << name 
    end
  end 
  def grade(grade)
    self.roster[grade]
  end
  def sort
    sorted = {}
    self.roster.each do |grade, students|
      sorted_students = students.sort 
      sorted[grade] = students.sort 
    end
    sorted
  end
end
# code here!