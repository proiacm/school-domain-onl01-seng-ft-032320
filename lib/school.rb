class School

  attr_accessor :name, :grade, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if roster.has_key?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort 
    roster.map do |grade, student|
      roster[grade] = student.sort
    end
    roster
  end
end