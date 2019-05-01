require_relative 'base_repository'

class MealRepository < BaseRepository

  def build_element(row)
    row[:price] = row[:price].to_i #convert to integer
    Meal.new(row)
  end

end
