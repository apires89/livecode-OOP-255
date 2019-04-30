require_relative 'base_repository'

class CustomerRepository < BaseRepository

  def build_element(row)
    Customer.new(row)
  end

end
