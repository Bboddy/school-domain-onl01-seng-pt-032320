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
    roster[grade] || roster[grade] = []
    roster[grade] << name
  end
  
  def sort
    sortedGrades = {}
    roster.each { |grade, student|
      sortedGrades[grade] = student.sort
    }
    return sortedGrades
  end
end