class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, grade)
    @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    sorted_roster = {}
    @roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end
end 