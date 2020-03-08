# frozen_string_literal: true

require './lib/students/student'
require './lib/courses/grade'
require './lib/courses/course'

require 'date'
g1 = Grade.new(5, Time.now.utc.to_date)
puts g1.number
puts g1.date
puts g1

s1 = Student.new('John Doe')
puts s1.name
s1.name = 'Jane Doe'
puts s1

c1 = Course.new('Ruby fundamentals', Date.new(2038, 1, 19))
s1 = Student.new('John Doe')
s2 = Student.new('John Smith')
puts c1.name
puts c1.start_date
puts c1
puts c1.started?
c1.enrol(s1)
puts c1.enrolled?(s1)
c1.enrol(s2)
puts c1.enrolled_students
c1.grade_student(s1, 5, Time.now.utc.to_date)
puts c1.student_grade(s1)
c1.grade_student(s2, 4, Time.now.utc.to_date)
