# code here!
class School
  attr_accessor :name

  @@roster = {}
  
  def initialize(name)
    @name = name
  end
  
  def add_student(student, grade)
        @@roster[grade] = [] unless @@roster.has_key?(grade)
        @@roster[grade] << student
        
  end
  
  def roster
    @@roster 
  end
  
  def grade(grade)
    @@roster[grade]
  end
  
  def sort
    sorted_roster = Hash[@@roster.sort_by{|grade, students| grade}]
  end
   
end