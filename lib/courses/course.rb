# frozen_string_literal: true

# students_in_course(student, grade_number, date = Time.now.utc.to_date)

# class course
class Course
  require 'date'
  attr_reader :name, :start_date
  def initialize(name, start_date)
    @students_in_course = {}
    @name = name
    @start_date = start_date
  end

  def to_s
    "#{@name} starts on #{@start_date}."
  end

  def started?
    Time.now.utc.to_date >= @start_date
  end

  def enrol(student)
    raise "Can not enrol #{student}. #{@name} start is in past." if started?

    @students_in_course.store(student, nil)
  rescue StandardError => e
    warn e.message
  end

  def enrolled?(student)
    @students_in_course.key?(student)
  end

  def enrolled_students
    @students_in_course.keys
  end

  def grade_student(student, grade_number, date = Time.now.utc.to_date)
    # Check if date is date
    # rubocop: disable Metrics/LineLength
    raise "Can not grade not enrolled student #{student}." unless enrolled?(student)

    # rubocop: enable Metrics/LineLength
    # print date value and see if it is matching the value inputted
    @students_in_course[student] = Grade.new(grade_number, date)
  rescue StandardError => e
    warn e.message
  end

  def student_grade(student)
    @students_in_course[student]
  end

  def grades
    @students_in_course.select { |_key, value| value }
  end
end
