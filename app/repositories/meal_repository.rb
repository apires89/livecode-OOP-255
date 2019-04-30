require_relative 'base_repository'

class MealRepository < BaseRepository

  def build_element(row)
    row[:price] = row[:price].to_i
    Meal.new(row)
  end

end
