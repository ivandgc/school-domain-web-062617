require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}  #grades => [names]
  end

  def add_student(name, grade)
    if self.roster[grade].class == Array
      self.roster[grade] << name
    else
      self.roster[grade] = [name]
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    sorted_roster = {}
    self.roster.sort.to_h.keys.each do |grade| #key
      sorted_roster[grade] = self.roster[grade].sort
    end
    sorted_roster
    # roster_dum.keys.collect! do |grade|
    #   roster_dummy[grade].sort
    # end
    # roster_dummy
  end


end
