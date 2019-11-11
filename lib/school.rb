# code here!
class School 
  
  #whenever we run School.new, the initialize method is run 
  
  def initialize(name) 
     @name = name 
     @roster = {}
  end
   def roster
     @roster
   end
   def add_student(student_name , grade)
     
     if @roster[grade]
       @roster[grade] << student_name
     else
       @roster[grade]  = [student_name]
     end
      
     #We are checking to see if a value(array) already exists in the @roster hash at the key of the grade in the roster 
     #If there is no value(array), what should we do?
     #If there IS a value(array), what should we do?
     
     #@roster = {
     #   9: ["Name 1", "Name 2"]
     # }
     
     #@roster[10] => nil 
     #@roster[9] => ["Name 1", "Name 2"]
     
     #HINT: What is the value? The value is either nil or an array
   end
    def grade(grade)
      @roster[grade]
      
    end
    def sort
      @roster.each do |grade,name|
        @roster[grade] = name.sort
      end
    end
end
