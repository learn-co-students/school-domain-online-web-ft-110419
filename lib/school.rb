class School
	attr_reader :grade, :sort,:name,:roster,:add_student
	
  def initialize(school_name)
		@name = school_name
    @roster = {}
  end
	
	def add_student(student,grade)
		if @roster[grade] 
			@roster[grade] << student
		else
			@roster[grade] = []
			@roster[grade] << student
		end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.map{|grade,students| [grade,students.sort]}.to_h
  end
  
end

