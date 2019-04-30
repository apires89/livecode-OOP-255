require_relative 'base_controller'
require_relative '../views/meal_view'
class MealController < BaseController
  def initialize(meal_repository)
    super(meal_repository)
    @view = MealView.new
  end

  def add
    #ask for name
    name = @view.ask_for(:name)
    #ask price
    price = @view.ask_for(:price)
    #create a meal instance
    meal = Meal.new(name: name,price: price)
    #save the meal
    @repository.add(meal)
  end



end
