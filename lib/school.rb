class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    sorts = {}
    roster.each  {|grade, students|
      sorts[grade] = students.sort}
    
    return sorts
  end
end
