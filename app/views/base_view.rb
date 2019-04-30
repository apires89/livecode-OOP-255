class BaseView
  def display_elements(elements)
    elements.each do |element|
      puts "#{element.to_view}"
    end
  end

  def ask_for(attribute)
    @input = gets.chomp
  end

end
