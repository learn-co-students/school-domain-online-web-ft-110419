class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  
  def grade(grades)
    roster[grades]
  end
  
  def sort 
    sorted_roster = {}
    roster.each do |grade, students|         #dotnetperls
    sorted_roster[grade] = students.sort               #stackoverflow
    # puts grade + String(students)               #dotnetperls
    end
    sorted_roster
  end
end
