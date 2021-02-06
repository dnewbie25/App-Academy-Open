require "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees
  def initialize(name, funding, salaries)
    @name = name 
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    if @salaries.has_key?(title)
      return true
    else  
      return false
    end
  end

  def >(startup2)
    if @funding > startup2.funding
      return true 
    else
      return false 
    end
  end

  def hire(employee_name, title)
    if @salaries.has_key?(title)
      new_employee = Employee.new(employee_name, title)
      @employees << new_employee
    else
      raise "Invalid Title"
    end
  end

  def size
    @employees.length
  end

  def pay_employee(employee)
    if @salaries[employee.title] < @funding
      employee.pay(@salaries[employee.title])
      @funding -= @salaries[employee.title]
    else
      raise "#{@name} does not have enough money to pay #{employee.name}"
    end
  end

  def payday
    @employees.each do |employee|
      pay_employee(employee)
    end
  end

  def average_salary
    total = 0
    @employees.each {|employee| total += @salaries[employee.title]}
    return total / @employees.length
  end

  def close
    @employees = []
    @funding = 0
  end

  def acquire(startup2)
    @funding += startup2.funding
    @salaries = startup2.salaries.merge @salaries
    @employees += startup2.employees
    startup2.close()
  end
end
