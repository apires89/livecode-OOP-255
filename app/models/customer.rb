class Customer
  attr_accessor :id
  attr_reader :name, :address
  def initialize(attributes={})
    @id = attributes[:id]
    @name = attributes[:name]
    @address = attributes[:address]
  end

  def to_view
    "#{id} - Name: #{name} | Address: #{address}"
  end

  def to_csv_row
    [id, name, address]
  end

  def headers
    %w[id name address]
  end
end
