require "byebug"

class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    #why is this the format???
    @grades = Hash.new { |h, k| h[k] = []}
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(teacher)
    @teachers << teacher
  end

  def enroll(student)
    if @students.length < @student_capacity
        @students << student
        true
    else
        false
    end
  end

  def enrolled?(student)
    if @students.include?(student)
        return true
    else
        return false
    end
  end

  def student_to_teacher_ratio
    #debugger
    (@students.length) / (@teachers.length * 1.0).round
  end

  def add_grade(student, grade)
    if @students.include?(student)
      @grades[student] << grade
      true
    else
      false
    end
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    if !@grades[student] || @grades[student].length == 0
      return nil
    else
      (@grades[student].sum / @grades[student].length)
    end
  end 

end




