# code here!
class School 

attr_accessor :student, :roster

def initialize(student)
  @student = student
  @roster = {}
end 

def roster
  @roster
end 


def add_student(student, grade)
  @roster[grade] ||= []
  @roster[grade] << student 
end 

def grade(grade)
  @roster[grade].flatten
end 

def sort 
  roster_sorted = {}
  @roster.map do |grade, name|
    roster_sorted[grade] = name.sort 
  end
   roster_sorted 
end 

end 