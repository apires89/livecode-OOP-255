# TODO: implement the router of your app.
class Router
  def initialize(controllers = {})
    @meals_controller = controllers[:meal_controller]
    @customers_controller = controllers[:customer_controller]
    @running = true
  end

  def run
    puts"Welcome to Livecode!"
    puts "----------------"

    while @running
      display_tasks
      action = gets.chomp.to_i
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then stop
    else
      puts "Please press 1,2,3,4 or 5"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What to do?"
    puts "1 - List meals"
    puts "2 - Add meal"
    puts "3 - List customers"
    puts "4 - Add customer"
    puts "5- Stop and Exit"

  end
end
