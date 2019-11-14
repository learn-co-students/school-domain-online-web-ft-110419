require 'pry'

# code here!
class School
  attr_accessor :name, :roster
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    #check to seee if there's a value here, if not make it an array. 
    #if there is, don't do anything
    roster[grade] << name
  end
  
  def grade(list_by_grade)
    roster[list_by_grade]
  end
  
  def sort
    names_alph_order = {}
    roster.each do |grade, names|
      names_alph_order[grade] = names.sort
    end
    names_alph_order
  end
end