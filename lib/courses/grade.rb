# frozen_string_literal: true

# class grade
class Grade
  require 'date'
  attr_reader :number, :date

  def initialize(number, date)
    @number = number
    @date = date
  end

  def grade
    "#{@number} on #{@date}"
  end

  alias to_s grade
end
