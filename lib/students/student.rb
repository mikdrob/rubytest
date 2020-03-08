# frozen_string_literal: true

# class Student
class Student
  def initialize(name)
    name_initializing(name)
  end

  def name
    "#{@first_name} #{@family_name}"
  end

  alias to_s name

  def name=(name)
    name_initializing(name)
  end

  private

  def name_initializing(name)
    @first_name, @family_name = name.split(' ')
  end
end
