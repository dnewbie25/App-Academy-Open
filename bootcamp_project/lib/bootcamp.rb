class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name 
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new {|hash, key| hash[key] = [] }
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
      return true
    else  
      return false
    end
  end

  def enrolled?(student)
    return @students.include?(student)
  end

  def student_to_teacher_ratio
    ratio = @students.length/@teachers.length
    return ratio.round 
  end

  def add_grade(student, grade)
    if @students.include?(student)
      @grades[student] << grade
      return true
    else
      return false
    end
  end

  def num_grades(student)
    total = @grades[student].length
    return total
  end

  def average_grade(student)
    if @students.include?(student) && !@grades[student].empty?
      average = @grades[student].sum / @grades[student].length
      return average.round
    else  
      return nil
    end
  end
end
