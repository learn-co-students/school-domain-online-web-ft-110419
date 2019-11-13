class School 
  
  #attr_accessor :name, :roster
  
  def initialize(name)
    @name = name 
    #@roster = roster 
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end 
  
    
  
  # def roster=(grade_level: "student names")
  #   @roste
  
  
  
  
  
  
  
  
  
  
  
  
  
  # def initialize(name)
  #   @name = name
  # end 
  # roster = 0 
  # roster = {}
  
  # def initialize(roster)
  #   @roster = roster 
  # end 
  
  # def roster=(roster)
  #   @roster = roster
  # end 
  
  # def roster
  #   @roster 
  # end 

