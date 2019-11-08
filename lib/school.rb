class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    self.roster[grade] = [] if self.roster[grade] == nil
    self.roster[grade] << name
  end
  
  def grade(year)
    return self.roster[year]
  end
  
  def sort
    self.roster.each do |grade, students|
      self.roster[grade] = students.sort
    end
  end
end
