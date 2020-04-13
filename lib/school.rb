class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def add_student(name, grade)
    roster[grade] << name
  end
  
  def sort 
    returnArray = []
    roster.each { |grade, student|
      returnArray[grade] = student.sort
    }
    return returnArray
end