require_relative 'base_view'

class MealView < BaseView

  def ask_for(attribute)
    puts "What's the #{attribute} of the meal?"
    print ">"
    super

  end

end
