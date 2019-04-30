# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require 'csv'
require_relative "router"

require_relative "app/models/meal"
require_relative "app/repositories/meal_repository"
require_relative "app/controllers/meal_controller"
require_relative "app/models/customer"
require_relative "app/repositories/customer_repository"
require_relative "app/controllers/customer_controller"


meals_csv_filepath = File.join(__dir__, 'data/meals.csv')
meal_repository = MealRepository.new(meals_csv_filepath)
meal_controller = MealController.new(meal_repository)

customers_csv_filepath = File.join(__dir__, 'data/customers.csv')
customer_repository = CustomerRepository.new(customers_csv_filepath)
customer_controller = CustomerController.new(customer_repository)


controllers = {
  meal_controller: meal_controller,
  customer_controller: customer_controller
}


router = Router.new(controllers)

router.run
