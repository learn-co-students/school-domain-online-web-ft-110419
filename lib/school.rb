class School

  def initialize(school_name)
    @name = school_name
    @roster = {} 
  end

  attr_accessor :name, :roster

  def add_student(roster_name, roster_key)
    roster[roster_key]||= []
    roster[roster_key] << roster_name 
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.map do |grade, student|
      sorted_hash[grade] = student.sort
    end
    sorted_hash
  end

end
