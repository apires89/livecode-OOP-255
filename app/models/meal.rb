class Meal
  attr_reader :name, :price
  attr_accessor :id
  def initialize(attributes = {})
    @name = attributes[:name]
    @price = attributes[:price]
    @id = attributes[:id]
  end

  def to_view
    "#{id} - Name: #{name} | Price: €#{price}"
  end

  def to_csv_row
    [id, name, price]
  end

  def headers
    %w[id name price]
  end
end
