require_relative 'base_view'

class CustomerView < BaseView

  def ask_for(attribute)
    puts "What's the #{attribute} of the customer?"
    print ">"
    super
  end

end
