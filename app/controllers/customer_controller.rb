require_relative 'base_controller'
require_relative '../views/customer_view'
class CustomerController < BaseController
  def initialize(customer_repository)
    super(customer_repository)
    @view = CustomerView.new
  end

  def add
    #ask for name
    name = @view.ask_for(:name)
    #ask address
    address = @view.ask_for(:address)
    #create a customer instance
    customer = Customer.new(name: name,address: address)
    #save the customer
    @repository.add(customer)
  end



end
